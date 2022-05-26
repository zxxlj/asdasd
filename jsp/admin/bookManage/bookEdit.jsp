<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商品修改</title>
    <link rel="stylesheet" type="text/css" href="bs/css/bootstrap.css">
    <script type="text/javascript" src="bs/js/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="bs/validform/style.css">
    <script type="text/javascript" src="bs/validform/Validform_v5.3.2_min.js"></script>
    <script type="text/javascript" src="js/admin/bookManage/bookAdd.js"></script>
    <style type="text/css">
        body{
            margin:0;
            padding:0;
            background:#d7ffccb5;
        }
        #bookAddForm{
        	margin-top:20px;
        }
        #imgForm,.img-box{
        	display:inline-block;
        }
        .img-box{
        	width: 100px;
        	height:100px;
        	background:url("images/book/noneImg.jpg") no-repeat center;
        	background-size: 290px;
        }
        .row{
        	margin-top:10px;
        	
        }
    </style>
</head>
<body>
<div class="container">
    <c:if test="${!empty bookMessage}">
        <h3 class="text-center">${bookMessage}</h3>
    </c:if>
    <h2 class="text-center">商品修改</h2>
    <div class="row">
    	<div class="col-sm-2 col-sm-offset-2 text-right">商品图片</div>
    	<div class="col-sm-4 ">
    		<div class="img-box" onclick="javascript:upImg()">
    			<img alt="" height="100px" src="${bookInfo.upLoadImg.imgSrc}" >
    		</div>
    		<span id="imgSpan">点击图片更改图片</span>
    		<form id="imgForm" action="jsp/admin/BookManageServlet?action=updateImg&id=${bookInfo.bookId}" method="post" enctype="multipart/form-data">
    			<input type="file" id="editImg" name="img" style="display:none"/>
    			<input type="submit" id="sub" value="更改" class="btn btn-info" style="display:none;margin-left:5px;">
    		</form>
    	</div>
    </div>
     <div class="row">
		<div class="col-sm-2 col-sm-offset-2 text-right">商品名称</div>
		<div class="col-sm-4 ">
		   ${bookInfo.bookName}
		</div>
            
    </div>
    <form id="bookAddForm" class="form-horizontal" action="jsp/admin/BookManageServlet?action=update" method="post">
        <input type="hidden" name="bookId" value="${bookInfo.bookId}">
       
        <div class="form-group">
            <label for="catalog" class="col-sm-2 col-sm-offset-2 control-label">商品类型</label>
            <div class="col-sm-4">
                <select name="catalog" id="catalog" class="form-control">
                    <option value="">==请选择商品类型==</option>
                    <c:if test="${!empty catalog}">
                        <c:forEach items="${catalog}" var="i">
                            <c:choose>
                                <c:when test="${i.catalogId eq bookInfo.catalog.catalogId}">
                                    <option value="${i.catalogId}" selected>${i.catalogName}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${i.catalogId}">${i.catalogName}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </c:if>
                </select>
            </div>
            <div class="col-sm-4 Validform_checktip"></div>
        </div>

        <div class="form-group">
            <label for="price" class="col-sm-2 col-sm-offset-2 control-label">价格</label>
            <div class="col-sm-4">
                <input type="text" name="price" id="price" class="form-control" value="${bookInfo.price}">
            </div>
            <div class="col-sm-4 Validform_checktip"></div>
        </div>
        <div class="form-group">
			<label for="author" class="col-sm-2 col-sm-offset-2 control-label">商品品牌</label>
			<div class="col-sm-4 ">
				<input type="text" name="author" id="author" class="form-control" value="${bookInfo.author}"/>
			</div>
			<div class="col-sm-4 Validform_checktip"></div>
		</div>
		<div class="form-group">
			<label for="press" class="col-sm-2 col-sm-offset-2 control-label">商品上市时间</label>
			<div class="col-sm-4 ">
				<input type="text" name="press" id="press" class="form-control" value="${bookInfo.press}"/>
			</div>
			<div class="col-sm-4 Validform_checktip"></div>
		</div>
    	<div class="form-group">
            <label for="desc" class="col-sm-2 col-sm-offset-2 control-label">备注</label>
            <div class="col-sm-4">
                <textarea rows="3" name="desc" id="desc" class="form-control" >${bookInfo.description}</textarea>
            </div>
            <span class="col-sm-4 ckerr">*选填</span>
        </div>
        <div class="form-group">
            <label class="col-sm-2 col-sm-offset-2 control-label">
                <input class="btn btn-success btn-block" type="submit" value="提交">
            </label>
            <label class="col-sm-2 control-label">
                <input class="btn btn-warning btn-block" type="reset" value="重置">
            </label>

        </div>

    </form>

</div>
<script type="text/javascript">
	function upImg(){
		$("#editImg").click();
	}
	$("#editImg").change(function(){
		$("#sub").css("display","inline-block");
		$("#imgSpan").css("display","none");
	})
	
	
</script>

</body>
</html>