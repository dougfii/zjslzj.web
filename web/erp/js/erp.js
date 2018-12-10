function Redirect(url) {
    window.location = url;
}

function Refresh() {
    window.location.reload();
}

function Location(params) {
    var qs = ((location.search.length > 0) ? location.search.substring(1) : '') + params;
    var args = {};
    var items = qs.length ? qs.split('&') : [], item = null, name = null, len = items.length;
    for (var i = 0; i < len; i++) {
        item = items[i].split('=');
        name = decodeURIComponent(item[0]);
        val = decodeURIComponent(item[1]);
        if (name.length) args[name] = val;
    }

    var qr = '?';
    for (var arg in args) {
        qr += "&" + encodeURIComponent(arg) + "=" + encodeURIComponent(args[arg]);
    }

    Redirect(qr);
}

function GoBack() {
    history.back();
}

function Loading() {
    layer.load("正在加载中...");
}

function Processing() {
    layer.load("正在处理中...");
}

function Uploading() {
    layer.load("正在上传中...");
}

function Export(url) {
    window.location.href = url;
}

function Printer(url) {
    window.open(url, '打印','height=600,width=810,top=0,left=0,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no');
}

function TreeBox(o) {
    var name = $(o).attr('id');
    var obj = $(o);
    var offset = $(o).offset();
    $('#' + name + 'box').css({
        left: offset.left + 'px',
        top: offset.top + obj.outerHeight() + 'px',
        width: obj.width() + 'px'
    }).slideDown('fast');
    $('body').on('mousedown', o, function (event) {
        if (!(event.target.id == name || event.target.id == name + 'box' || $(event.target).parents('#' + name + 'box').length > 0)) {
            $('#' + name + 'box').fadeOut('fast');
            $('body').off('mousedown', o);
        }
    });
}

function makearray(obj){
    var a = new Array();
    $.each($(obj), function(i, n){
        a.push($(this).val());
    });
    return a;
}

function serials(obj){
    $.each($(obj), function(i, n){
        $(this).html(i+1);
    });
}

var work_attachments = [];

function SetWorkAttachment(str){
    if(str != null && str !== ''){
        var arr = str.split('|');
        if(Array.isArray(arr)){
            for(var i in arr){
                var ar = arr[i].split(',');
                if(Array.isArray(ar) && ar.length === 3){
                    work_attachments.push(ar);
                }
            }
        }
    }
}

function GetWorkAttachmentString(){
    var tmp = [];
    for(var i in work_attachments){
        tmp.push(work_attachments[i].join(','));
    }
    return tmp.join('|');
}

function UploadWork(up_mode, up_id, up_name){
    $.ajaxFileUpload({
        url: '?m=Upload&a=UpWork&up_id=' + up_id,
        secureuri: false,
        fileElementId: 'upfile' + up_id,
        dataType: 'json',
        success: function(ret, status) {
            if(ret.state === 'SUCCESS') {
                up_name = (up_mode === 1 ? up_name : ret.originalName);
                $.post('?m=Attachment&a=Upload', {up_id:up_id, up_name:up_name, filename:ret.originalName, url:ret.url, ext:ret.type, size:ret.size}, function (rt){
                    if(rt.code === 1)layer.msg('上传完成', 1, function(){
                        if(up_mode === 1) {
                            work_attachments.push([1, up_id, rt.msg]);
                            $('#atta' + up_id).html('<a href="' + ret.url + '" target="_blank">' + up_name + '</a>');
                        }
                        else
                        {
                            work_attachments.push([2, 0, rt.msg]);
                            $('.atts ul').append('<li id="atta' + rt.msg + '"><a href="' + ret.url + '" target="_blank">' + ret.originalName + '</a>　　<a href="javascript:;" class="upd" did="' + rt.msg + '">删除</a></li>');
                        }
                    });else layer.msg(rt.msg, 1);
                }, 'json');
            }
            else layer.msg(ret.state, 2, -1);
        },
        error:function(ret, status, e){
            layer.msg('上传失败 ' + e, 2, -1);
        }
    });
}

function SetDatas() {

    return {
        "work_id": $("#work_id").val(),
        "node_id": $("#node_id").val(),
        "item_id": $("#item_id").val(),
        "reply_id": $("#reply_id").val(),
        "attachments": GetWorkAttachmentString(),

        "f1": $("#f1").val(),
        "f2": $("#f2").val(),
        "f3": $("#f3").val(),
        "f4": $("#f4").val(),
        "f5": $("#f5").val(),
        "f6": $("#f6").val(),
        "f7": $("#f7").val(),
        "f8": $("#f8").val(),
        "f9": $("#f9").val(),
        "f10": $("#f10").val(),
        "f11": $("#f11").val(),
        "f12": $("#f12").val(),
        "f13": $("#f13").val(),
        "f14": $("#f14").val(),
        "f15": $("#f15").val(),
        "f16": $("#f16").val(),
        "f17": $("#f17").val(),
        "f18": $("#f18").val(),
        "f19": $("#f19").val(),
        "f20": $("#f20").val(),
        "f21": $("#f21").val(),
        "f22": $("#f22").val(),
        "f23": $("#f23").val(),
        "f24": $("#f24").val(),
        "f25": $("#f25").val(),
        "f26": $("#f26").val(),
        "f27": $("#f27").val(),
        "f28": $("#f28").val(),
        "f29": $("#f29").val(),
        "f30": $("#f30").val(),
        "f31": $("#f31").val(),
        "f32": $("#f32").val(),
        "f33": $("#f33").val(),
        "f34": $("#f34").val(),
        "f35": $("#f35").val(),
        "f36": $("#f36").val(),
        "f37": $("#f37").val(),
        "f38": $("#f38").val(),
        "f39": $("#f39").val(),
        "f40": $("#f40").val(),
        "f41": $("#f41").val(),
        "f42": $("#f42").val(),
        "f43": $("#f43").val(),
        "f44": $("#f44").val(),
        "f45": $("#f45").val(),
        "f46": $("#f46").val(),
        "f47": $("#f47").val(),
        "f48": $("#f48").val(),
        "f49": $("#f49").val(),
        "f50": $("#f50").val(),

        "fa1[]" : makearray('.fa1'),
        "fa2[]" : makearray('.fa2'),
        "fa3[]" : makearray('.fa3'),
        "fa4[]" : makearray('.fa4'),
        "fa5[]" : makearray('.fa5'),
        "fa6[]" : makearray('.fa6'),
        "fa7[]" : makearray('.fa7'),
        "fa8[]" : makearray('.fa8'),
        "fa9[]" : makearray('.fa9'),
        "fa10[]" : makearray('.fa10'),
        "fa11[]" : makearray('.fa11'),
        "fa12[]" : makearray('.fa12'),
        "fa13[]" : makearray('.fa13'),
        "fa14[]" : makearray('.fa14'),
        "fa15[]" : makearray('.fa15'),
        "fa16[]" : makearray('.fa16'),
        "fa17[]" : makearray('.fa17'),
        "fa18[]" : makearray('.fa18'),
        "fa19[]" : makearray('.fa19'),
        "fa20[]" : makearray('.fa20'),
        "fa21[]" : makearray('.fa21'),
        "fa22[]" : makearray('.fa22'),
        "fa23[]" : makearray('.fa23'),
        "fa24[]" : makearray('.fa24'),
        "fa25[]" : makearray('.fa25'),
        "fa26[]" : makearray('.fa26'),
        "fa27[]" : makearray('.fa27'),
        "fa28[]" : makearray('.fa28'),
        "fa29[]" : makearray('.fa29'),
        "fa30[]" : makearray('.fa30'),
        "fa31[]" : makearray('.fa31'),
        "fa32[]" : makearray('.fa32'),
        "fa33[]" : makearray('.fa33'),
        "fa34[]" : makearray('.fa34'),
        "fa35[]" : makearray('.fa35'),
        "fa36[]" : makearray('.fa36'),
        "fa37[]" : makearray('.fa37'),
        "fa38[]" : makearray('.fa38'),
        "fa39[]" : makearray('.fa39'),
        "fa40[]" : makearray('.fa40'),
        "fa41[]" : makearray('.fa41'),
        "fa42[]" : makearray('.fa42'),
        "fa43[]" : makearray('.fa43'),
        "fa44[]" : makearray('.fa44'),
        "fa45[]" : makearray('.fa45'),
        "fa46[]" : makearray('.fa46'),
        "fa47[]" : makearray('.fa47'),
        "fa48[]" : makearray('.fa48'),
        "fa49[]" : makearray('.fa49'),
        "fa50[]" : makearray('.fa50'),
    };
}

$(function () {
    $('#openfind').click(function () {
        $('.find').toggle('fast');
    });
    $('.back').click(function () {
        history.back();
    });
    $('.bback').click(function () {
        history.back();
    });
    $('.delattr').click(function(){
        var id=$(this).attr('did');
        layer.confirm('您确认需要删除吗?\n此操作不可恢复!', function(i){layer.close(i);$.post('?m=Project&a=OnUpFlowDelete', {id:id}, function(ret){if(ret.code==1)Refresh();else layer.msg(ret.msg, 2, -1);}, 'json');});
    });

    $('.atts').on( 'click', '.upd', function(){
        var obj = $(this);
        var id = obj.attr('did');
        layer.confirm('您确认需要删除吗?\n此操作不可恢复!', function(i){
            layer.close(i);
            //work_attachments.splice(obj.parent('li').index());
            obj.parent('li').remove();
        });
    });
});