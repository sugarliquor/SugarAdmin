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
                        <form class="form-horizontal m-t" id="frm" method="post" action="${ctx!}/admin/order/edit">
                        	<input type="hidden" id="id" name="id" value="${user.id}">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">开单编号：</label>
                                <div class="col-sm-8">
                                    <input id="orderNo" name="orderNo" class="form-control" type="text" value="${order.orderNo}" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">地址：</label>
                                <div class="col-sm-8">
                                    <input id="address" name="address" class="form-control" type="text" value="${order.address}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">联系电话：</label>
                                <div class="col-sm-8">
                                    <input id="contactNumber" name="contactNumber" class="form-control" type="text" value="${order.contactNumber}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">介绍人：</label>
                                <div class="col-sm-8">
                                    <input id="introducer" name="introducer" class="form-control" type="text" value="${order.introducer}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">安装工：</label>
                                <div class="col-sm-8">
                                    <input id="installer" name="installer" class="form-control" type="text" value="${order.installer}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">安装时间：</label>
                                <div class="col-sm-8">
                                    <input id="installationTime" name="installationTime" readonly="readonly" class="laydate-icon form-control layer-date" value="${order.installationTime}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">订金：</label>
                                <div class="col-sm-8">
                                    <input id="frontMoney" name="frontMoney" class="form-control" type="text" value="${order.frontMoney}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">总计：</label>
                                <div class="col-sm-8">
                                    <input id="total" name="total" class="form-control" type="text" value="${order.total}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">制单人：</label>
                                <div class="col-sm-8">
                                    <input id="singlePerson" name="singlePerson" class="form-control" type="text" value="${order.singlePerson}">
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
	        elem: '#installationTime', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
	        event: 'focus' //响应事件。如果没有传入event，则按照默认的click
	    });
	  	
	    $("#frm").validate({
    	    rules: {
    	    	orderNo: {
    	        required: true,
    	      },
    	      	address: {
    	        required: true,
    	      },
    	      	contactNumber: {
    	        required: true
    	      },
    	      	introducer: {
    	        required: true
    	      },
    	      	installer: {
    	        required: true
    	      },
    	      	installationTime: {
    	      	date:true,
    	        required: true
    	      },
    	      	frontMoney: {
    	        required: true,
    	      },
    	      	total: {
    	        required: true
    	      },
    	      	singlePerson: {
    	        required: true,
    	      }
    	    },
    	    messages: {},
    	    submitHandler:function(form){
    	    	$.ajax({
   	    		   type: "POST",
   	    		   dataType: "json",
   	    		   url: "${ctx!}/admin/order/edit",
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
