<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var = "conPath" value = "${pageContext.request.contextPath }"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<style>
table {
    border-collapse: collapse;
    border-spacing: 0;
}

.findfindd {
    position: relative;
    width: 100%;
    margin: 0 auto;
}

.id_foundd {
    position: relative;
    width: 1000px;
    margin: 0 auto;
}

.id_foundd h1 {
    font-size: 50px;
    text-align: center;
    height: 110px;
    margin-top: 40px;
}

.baba {
    position: relative;
    margin: 0 auto;
}

.baba tr {
    position: relative;
    height: 100px;
}

.baba th {
    position: relative;
    font-size: 30px;
    text-align: center;
}

.baba td {
    position: relative;
    margin: 0 auto;
    border: none;
}

.baba td input {
    width: 100px;
    height: 50px;
    font-size: 20px;
    border-radius: 10px;
    border: 1px solid lightgray;
    
}
.baba .button input{
	background-color: #6f23f9;
	font-size: 20px;
	color: white;
}


.fileUp {
    position: relative;
    height: 80px;
    margin: 0 auto;
    text-align: right;
}

.fileUp input[type=file] {
    width: 190px;
    height: 32px;
    font-size: 13px;
    border: 0;
    border-radius: 15px;
    outline: none;
    padding: 3px;
    background-color: rgb(233, 233, 233);
}

.fileUp input[type=button] {
    width: 150px;
    height: 32px;
    font-size: 12px;
    border: 0;
    border-radius: 15px;
    outline: none;
    padding: 3px;
    background-color: rgb(233, 233, 233);
}

.update_buttons {
    position: relative;
    width: 100%;
    height: 100px;
    margin: 0 auto;
    text-align: center;
}

.update_buttons input {
    width: 140px;
    height: 56px;
    border-radius: 40px;
    background-color: #6f23f9;
    font-size: 20px;
    color: white;
    margin: 0 3px;
    border: none;
}
.baba th {
    position: relative;
    font-size: 30px;
    text-align: center;
}

.baba td {
    position: relative;
    margin: 0 auto;
    border: none;
}

.baba td input[type="text"] {
    width: 90%;
    height: 50px;
    font-size: 20px;
    border-radius: 10px;
    border: 1px solid lightgray;
    margin-left: 10px; 
}

.fileUp input[type=file] {
    width: 80%;
    height: 32px;
    font-size: 13px;
    border: 0;
    border-radius: 15px;
    outline: none;
    padding: 3px;
    background-color: rgb(233, 233, 233);
    margin-left: 10px;
}
.update_buttons {
    display: flex;
    align-items: center;
    text-align: center;
    height: 100px; 
    margin: 0 auto;
}
h1{
 text-align: center;
 font-size: 50px;
}
</style>
<script>
	$(document).ready(function() {
		$('#mymy').change(function() {
			// 첨부한 파일명을 input에 넣어줌
			if (window.FileReader) {
				var filename = $(this)[0].files[0].name; 
			} else {
				var filename = $(this).val().split('/').pop()
						.split('\\').pop();
			}
			 $('.sbimage').children(':eq(1)').val(filename);
		});
	});
</script>
<body>
<c:set var="SUCCESS" value="1"/>
	<c:if test="${insertResult == SUCCESS }">
		<script>
			alert('공지사항 수정 완료');
		</script>
	</c:if>
<jsp:include page="../main/header.jsp"/>
<jsp:include page="workerHeader.jsp"/>
<article>
<div class="findfindd">
<h1>공지사항 수정</h1>
<br><hr><br>
<!-- include summernote css/js-->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script>
	 $(document).ready(function() {
		 $('#summernote').summernote({
	        height: 300,
	        minHeight: null,
	        maxHeight: null,
	        lang : 'ko-KR',
	        onImageUpload: function(files, editor, welEditable) {
	                sendFile(files[0], editor, welEditable);
	            }
		  });
	 });
</script>
<form action= "${conPath }/worker/update.do" method="post" enctype="multipart/form-data">
	<table class="baba">
		<tr>
			<th>제목</th> 
			<td><input type="text" name="ntitle" size="47" value="${notice.ntitle }" required="required"></td>
		</tr>
		<tr>
			<th>파일</th>
	    	<td>
	    		<div class = "sbimage"style="width: 90%; overflow: hidden;">
			        <label for="mymy" style="float: left; margin-right: 10px;">
			            <img src="${conPath}/images/fileup.png" style="width: 50px; display: block;">
			        </label>
			        <input type="text" name="image" id="image" value="${notice.ncontent}" style="width: calc(100% - 80px); float: left;">
			    </div>
	   			<div id="filename">
	   			<input type="file" name="temp_ncontent" id="mymy" style = "width:90%; display: none;">
	   			</div>
	   		</td>
	   	</tr>
	   	<tr>
			<th>내용</th> 
			<td><textarea name="ntext" id="summernote" size="47" >${notice.ntext }</textarea></td>
		</tr>
	   	<tr>
	   		<td class="button" colspan="2" style="text-align: center;">
	   			<input type="submit" value="공지수정" >
				<input type="button" value="목록으로" onClick="location.href='${conPath }/worker/list.do'" >
				<input type="RESET" value="재설정"  >
	   		</td>
	   	</tr>
	</table>
</form>
</div>
</article>
<jsp:include page="../main/footer.jsp"/>
</body>
</html>