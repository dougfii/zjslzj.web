<?php

class SmsCls
{
    const APIKEY = 'api:key-38844731277c325027646ca5e41a7f02';
    const URL = 'https://sms-api.luosimao.com/v1/send.json';
    const TIMEOUT = 30;
    //
    const LIMIT_MOBILE_DAY = 30; // 一个手机号每天限制数
    const LIMIT_TYPE_DAY = 10; // 一个类型一个手机号每天限制数

    /**
     * send error cod
     *
     * -10 验证信息失败 检查api key是否和各种中心内的一致，调用传入是否正确
     * -20 短信余额不足 进入个人中心购买充值
     * -30 短信内容为空 检查调用传入参数：message
     * -31 短信内容存在敏感词 修改短信内容，更换词语
     * -32 短信内容确少签名信息 短信内容末尾增加签名信息eg.【公司名称】
     * -40 错误的手机号 检查手机号是否正确
     * -50 请求发送IP不在白名单内 查看触发短信IP白名单的设置
     * 0 OK
     */

    //
    public static function SendMessage($mobile, $message)
    {
        try {
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, self::URL);

            curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_0);
            curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, self::TIMEOUT);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
            curl_setopt($ch, CURLOPT_HEADER, FALSE);

            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
            curl_setopt($ch, CURLOPT_SSLVERSION, 3);

            curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
            curl_setopt($ch, CURLOPT_USERPWD, self::APIKEY);

            curl_setopt($ch, CURLOPT_POST, TRUE);
            curl_setopt($ch, CURLOPT_POSTFIELDS, array('mobile' => $mobile, 'message' => $message));

            $code = json_decode(curl_exec($ch), true);
        } catch (Exception $e) {
            curl_close($ch);

            return false;
        }

        curl_close($ch);

        return $code ['error'] === 0;
    }

    public static function CombineMessage($company, $content)
    {
        return "{$content}【{$company}】";
    }

    public static function MakeCode()
    {
        return sprintf("%04d", rand(1, 9999));
    }
}

class SmsException extends Exception
{
}