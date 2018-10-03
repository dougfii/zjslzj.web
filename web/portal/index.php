<?php
define('BASE_SYS_PATH', '../../');
define('BASE_LIB_PATH', '../../lib/');
define('BASE_TPL_PATH', '../../lib/portal/tpl/');

define('ALERT_ERROR', '系统处理错误');

define('PAGE_SIZE_MEDIUM', 20);

define('APP_SHORTNAME', '水利工程质监站');
define('COMPANY_NAME', '镇江市水利工程质量安全监督站');

// *** 以下是新定义
define('APP_NAME', '镇江市水利工程质量安全监督站');


ob_start();

require_once(BASE_LIB_PATH . 'portal/Loader.php');

try {
    Config::Instance()->Init(BASE_SYS_PATH . 'conf/portal.ini.php');
    Dispatcher::Instance()->Dispatch();
} catch (Exception $e) {
    echo ALERT_ERROR;
}