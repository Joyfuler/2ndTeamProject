<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QNA 비밀번호 확인</title>
</head>
<body>
<script >
	opener.location.href="${conPath}/qna/qnaView.do?qno=" + ${param.qno};
	self.close();
</script>
</body>
</html>