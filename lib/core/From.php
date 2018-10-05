<?php
/**
 * Created by IntelliJ IDEA.
 * User: momo
 * Date: 2018/10/2
 * Time: 23:28
 */

class From
{
    public static function Text($edit, $id, $value, $class = '', $size = '', $readonly = false)
    {
        return $edit ? '<input type="text" id="' . $id . '" class="' . $class . '" value="' . $value . '" ' . ($readonly ? 'readonly' : '') . ' ' . (!empty($size) ? 'size="' . $size . '"' : '') . ' />' : $value;
    }

    public static function Date($edit, $id, $value, $class = '', $size = '')
    {
        return $edit ? '<input type="text" id="' . $id . '" class="' . $class . '" value="' . $value . '" onclick="laydate();" readonly ' . (!empty($size) ? 'size="' . $size . '"' : '') . ' />' : $value;
    }

    public static function TextArea($edit, $id, $value, $class = '', $rows = null, $cols = null, $readonly = false)
    {
        return $edit ? '<textarea id="' . $id . '" class="' . $class . '" ' . (!is_null($rows) ? 'rows="' . $rows . '"' : '') . ' ' . (!is_null($cols) ? 'cols="' . $cols . '"' : '') . ' ' . ($readonly ? 'readonly' : '') . '>' . $value . '</textarea>' : $value;
    }

    public static function Checkbox($edit, $id, $checked, $name)
    {
        return '<input type="checkbox" id="' . $id . '" ' . ($checked ? 'checked' : '') . ' ' . ($edit ? '' : 'disabled="disabled"') . ' /> ' . $name;
    }

    public static function Hidden($id, $value)
    {
        return '<input type="hidden" id="' . $id . '" value="' . $value . '" />';
    }
}