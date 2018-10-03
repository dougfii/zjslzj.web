<!doctype html>
<html>
<head>
    <title><?php echo APP_NAME; ?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="favicon.ico"/>
    <link href="/css/jquery.ztree-3.5.css" rel="stylesheet"/>
    <link href="/css/layer.css" rel="stylesheet" type="text/css"/>
    <link href="/css/laydate.css" rel="stylesheet" type="text/css"/>
    <link href="/css/member.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="/js/ajaxfileupload.js"></script>
    <script type="text/javascript" src="/js/jquery.ztree.all-3.5.min.js"></script>
    <script type="text/javascript" src="/js/layer.js"></script>
    <script type="text/javascript" src="/js/laydate.js"></script>
    <script type="text/javascript" src="/js/momo.js"></script>
    <script type="text/javascript" src="/js/member.js"></script>
    <script type="text/javascript" src="/js/mergecell.js"></script>
    <script src='http://localhost:8000/CLodopfuncs.js'></script>
    <script language="javascript" type="text/javascript">
        function Printer(preview){
            var printHtml = '<!doctype html><head><link href="/css/member.css" rel="stylesheet" type="text/css"></head><body>' + document.getElementById('print_area').innerHTML + '</body>';
            //LODOP.PRINT_INIT("准考证");//如果是使用pdf打印机的话 会另存为成“准考证.pdf”
            //LODOP.SET_PRINT_PAGESIZE(2, 2970, 2100,"准考证打印");
            //LODOP.SET_PRINT_MODE('POS_BASEON_PAPER', true);
            //LODOP.SET_SHOW_MODE("LANDSCAPE_DEFROTATED",1);//横向时的正向显示
            LODOP.SET_PRINT_MODE("PRINT_PAGE_PERCENT", "Auto-Width");
            //LODOP.ADD_PRINT_HTM(0, 0, '100%', '100%', printHtml);
            LODOP.ADD_PRINT_HTM("5mm", "5mm", "RightMargin:5mm", "BottomMargin:5mm", printHtml);
            if (preview) LODOP.PREVIEW(); else LODOP.PRINT();
        }
    </script>
</head>
<body>