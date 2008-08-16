sub render_extjs {
	my %param = @_;
	return <<HTML;
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>$param{form}</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../ext/resources/css/ext-all.css"/>
    <script type="text/javascript" src="../ext/adapter/ext/ext-base.js"></script>
    <script type="text/javascript" src="../ext/ext-all.js"></script>
<script type="text/Javascript">

Ext.onReady(function(){

    var simple = new Ext.FormPanel({
        frame:true,
        title: 'Simple Form',
        bodyStyle:'padding:5px 5px 0',
        width: 800,

        items: $param{items},

        buttons: [{
            text: 'Save'
        },{
            text: 'Cancel'
        }]
    });

    simple.render(document.body);
});
</script>

</head>
<body>



</body>
</html>

HTML
	
	
	
}

1;