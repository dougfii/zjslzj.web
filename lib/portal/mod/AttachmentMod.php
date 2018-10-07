<?php

class AttachmentMod extends BaseMod
{
    public function index()
    {
        $this->Upload();
    }

    public function Upload()
    {
        $up_id = $this->Req('up_id', 0, 'int');
        $up_name = $this->Req('up_name', '', 'str');
        $filename = $this->Req('filename', '', 'str');
        $url = $this->Req('url', '', 'str');
        $ext = $this->Req('ext', '', 'str');
        $size = $this->Req('size', 0, 'int');

        $id = AttachmentsClz::add($up_id, $up_name, $filename, $url, $ext, $size);

        Json::ReturnSuccess($id);
    }
}