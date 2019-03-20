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
                        <form class="form-horizontal m-t" id="frm" method="post" action="${ctx!}/admin/stock/edit">
                        	<input type="hidden" id="id" name="id" value="${stock.id}">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">到库时间：</label>
                                <div class="col-sm-8">
                                	<input id="arrivaTime" name="arrivaTime" readonly="readonly" class="laydate-icon form-control layer-date" value="${stock.arrivaTime}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">进货厂家：</label>
                                <div class="col-sm-8">
                                    <input id="incomManu" name="incomManu" class="form-control" type="text" value="${stock.incomManu}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">名称及规格：</label>
                                <div class="col-sm-8">
                                    <input id="nameSpeci" name="nameSpeci" class="form-control" type="text" value="${stock.nameSpeci}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">批号：</label>
                                <div class="col-sm-8">
                                    <input id="batchNumber" name="batchNumber" class="form-control" type="text" value="${stock.batchNumber}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">总数量：</label>
                                <div class="col-sm-8">
                                    <input id="totalQuantity" name="totalQuantity" class="form-control" type="number" value="${stock.totalQuantity}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">库存数量：</label>
                                <div class="col-sm-8">
                                	<input id="inventoryQuantity" name="inventoryQuantity" class="form-control" type="number" value="${stock.inventoryQuantity}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">备注：</label>
                                <div class="col-sm-8">
                                    <input id="remarks" name="remarks" class="form-control" type="text" value="${stock.remarks}">
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
	        elem: '#arrivaTime', //目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
	        event: 'focus' //响应事件。如果没有传入event，则按照默认的click
	    });
	  	
	    $("#frm").validate({
    	    rules: {
    	    	arrivaTime: {
    	    	date:true,
    	        required: true
    	      },
    	      	incomManu: {
    	        required: true
    	      },
    	      	nameSpeci: {
    	        required: true
    	      },
    	      	batchNumber: {
    	        required: true
    	      },
    	      	totalQuantity: {
    	        required: true
    	      },
    	      	inventoryQuantity: {
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
   	    		   url: "${ctx!}/admin/stock/edit",
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
