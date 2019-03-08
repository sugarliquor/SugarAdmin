<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 表单验证 jQuery Validation</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="${ctx!}/assets/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${ctx!}/assets/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${ctx!}/assets/css/animate.css" rel="stylesheet">
    <link href="${ctx!}/assets/css/style.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <form class="form-horizontal m-t" id="frm" method="post" action="${ctx!}/admin/purStock/edit">
                        	<input type="hidden" id="id" name="id" value="${purStock.id}">
                        	<div class="form-group">
                                <label class="col-sm-3 control-label">订货时间：</label>
                                <div class="col-sm-8">
                                	<input id="orderTime" name="orderTime" readonly="readonly" class="laydate-icon form-control layer-date" value="${purStock.orderTime}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">进货时间：</label>
                                <div class="col-sm-8">
                                	<input id="purchasTime" name="purchasTime" readonly="readonly" class="laydate-icon form-control layer-date" value="${purStock.purchasTime}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">出货时间：</label>
                                <div class="col-sm-8">
                                	<input id="shippTime" name="shippTime" readonly="readonly" class="laydate-icon form-control layer-date" value="${purStock.shippTime}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">打款时间：</label>
                                <div class="col-sm-8">
                                	<input id="paymentTime" name="paymentTime" readonly="readonly" class="laydate-icon form-control layer-date" value="${purStock.paymentTime}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">到货时间：</label>
                                <div class="col-sm-8">
                                	<input id="arrivalTime" name="arrivalTime" readonly="readonly" class="laydate-icon form-control layer-date" value="${purStock.arrivalTime}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">订货人：</label>
                                <div class="col-sm-8">
                                    <input id="shipper" name="shipper" class="form-control" type="text" value="${purStock.shipper}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">进货厂家：</label>
                                <div class="col-sm-8">
                                    <input id="incomManu" name="incomManu" class="form-control" type="text" value="${purStock.incomManu}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">联系电话：</label>
                                <div class="col-sm-8">
                                    <input id="contactNumber" name="contactNumber" class="form-control" type="text" value="${purStock.contactNumber}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">联系人：</label>
                                <div class="col-sm-8">
                                    <input id="contacts" name="contacts" class="form-control" type="text" value="${purStock.contacts}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">物流电话：</label>
                                <div class="col-sm-8">
                                    <input id="logisNumber" name="logisNumber" class="form-control" type="text" value="${purStock.logisNumber}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">进货名称及规格：</label>
                                <div class="col-sm-8">
                                	<input id="nameSpeci" name="nameSpeci" class="form-control" type="text" value="${purStock.nameSpeci}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">进货数量：</label>
                                <div class="col-sm-8">
                                    <input id="purQuantity" name="purQuantity" class="form-control" type="text" value="${purStock.purQuantity}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">单价：</label>
                                <div class="col-sm-8">
                                    <input id="unitPrice" name="unitPrice" class="form-control" type="text" value="${purStock.unitPrice}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">总计：</label>
                                <div class="col-sm-8">
                                    <input id="total" name="total" class="form-control" type="text" value="${purStock.total}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">备注：</label>
                                <div class="col-sm-8">
                                    <input id="remarks" name="remarks" class="form-control" type="text" value="${purStock.remarks}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
                                    <button class="btn btn-primary" type="submit">提交</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>


    <!-- 全局js -->
    <script src="${ctx!}/assets/js/jquery.min.js?v=2.1.4"></script>
    <script src="${ctx!}/assets/js/bootstrap.min.js?v=3.3.6"></script>

    <!-- 自定义js -->
    <script src="${ctx!}/assets/js/content.js?v=1.0.0"></script>

    <!-- jQuery Validation plugin javascript-->
    <script src="${ctx!}/assets/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="${ctx!}/assets/js/plugins/validate/messages_zh.min.js"></script>
    <script src="${ctx!}/assets/js/plugins/layer/layer.min.js"></script>
    <script src="${ctx!}/assets/js/plugins/layer/laydate/laydate.js"></script>
    <script type="text/javascript">
    $(document).ready(function () {
	  	//外部js调用
	  	laydate({
	        elem: '#orderTime', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
	        event: 'focus' //响应事件。如果没有传入event，则按照默认的click
	    });
	    laydate({
	        elem: '#purchasTime', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
	        event: 'focus' //响应事件。如果没有传入event，则按照默认的click
	    });
	    laydate({
	        elem: '#shippTime', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
	        event: 'focus' //响应事件。如果没有传入event，则按照默认的click
	    });
	    laydate({
	        elem: '#paymentTime', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
	        event: 'focus' //响应事件。如果没有传入event，则按照默认的click
	    });
	    laydate({
	        elem: '#arrivalTime', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
	        event: 'focus' //响应事件。如果没有传入event，则按照默认的click
	    });
	  	
	    $("#frm").validate({
    	    rules: {
    	    	orderTime: {
    	    	date:true,
    	        required: true
    	      },
    	    	purchasTime: {
    	    	date:true,
    	        required: true
    	      },
    	      	shippTime: {
    	    	date:true,
    	        required: true
    	      },
    	      	paymentTime: {
    	    	date:true,
    	        required: true
    	      },
    	      	arrivalTime: {
    	    	date:true,
    	        required: true
    	      },
    	      	shipper: {
    	        required: true
    	      },
    	      	incomManu: {
    	        required: true
    	      },
    	      	contactNumber: {
    	        required: true
    	      },
    	      	contacts: {
    	        required: true
    	      },
    	      	logisNumber: {
    	        required: true
    	      },
    	      	nameSpeci: {
    	        required: true
    	      },
    	      	purQuantity: {
    	        required: true
    	      },
    	      	unitPrice: {
    	        required: true
    	      },
    	      	total: {
    	        required: true
    	      },
    	      	remarks: {
    	        required: true
    	      }
    	    },
    	    messages: {},
    	    submitHandler:function(form){
    	    	$.ajax({
   	    		   type: "POST",
   	    		   dataType: "json",
   	    		   url: "${ctx!}/admin/purStock/edit",
   	    		   data: $(form).serialize(),
   	    		   success: function(msg){
	   	    			layer.msg(msg.message, {time: 2000},function(){
	   						var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
	   						parent.layer.close(index); 
	   					});
   	    		   }
   	    		});
            } 
    	});
    });
    </script>

</body>

</html>
