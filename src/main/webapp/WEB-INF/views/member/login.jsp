<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var = "conPath" value = "${pageContext.request.contextPath }"/> 
<!DOCTYPE html>
<html>
<head>
<title>로그인 페이지</title>
<script
  src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	function loginCheck(){
		if ($('input.mid').val() == ''){
		alert("아이디는 필수 입력사항입니다.");
		$('input.mid').focus();
		return false;
	} else if ($('input.mpw').val() == ''){
		alert("비밀번호는 필수 입력사항입니다.");
		$('input.mpw').focus();
		return false;
	}
}
</script>
</head>
<jsp:include page="../main/header.jsp"/>
<c:if test = "${not empty joinResult }">
	<script>
		alert('${joinResult eq 1? "어드벤처 월드 가입을 환영합니다. 가입을 기념하여 멤버십 포인트 1000점을 지급해 드립니다." : "가입실패"}'); 
	</script>
</c:if>
<c:if test = "${not empty loginResult }">
	<script>
		alert('${loginResult}');
	</script>
</c:if>	
<!-- qnaWrite에서 로그인 안되서 온 경우 -->
<c:if test="${not empty param.next and empty param.pageNum}"> 
		<c:set var="next" value="${param.next }"/>
</c:if>
<body>  
<div id=logina>
   <div class="login">
   		<div class="join_title">
   			어드벤처 월드 로그인
   		</div>
   </div>
   <h2 style="color:gray; font-weight:400">회원아이디와 비밀번호로 로그인 하세요.</h2>
   <br><br>
   <form action = "${conPath }/member/login.do" method = "post">
   		<input type="hidden" name="next" value="${empty param.next? 'main.do' : param.next}">
   		<div id=input>
      		<input name="mid" class = "mid" placeholder="&nbsp;아이디" size="40" type="text" style="width:500px"><br>
   		</div>
   		<br>
   		<div id=input>
      		<input name="mpw" class = "mpw" placeholder="&nbsp;비밀번호" size="40" type="password" style="width:500px"><br>
   		</div>
   		<div class="menu1">
      		<ul>
          		<li onclick="window.open('${conPath}/member/findId.do', '_blank', 'width=600, height=500');" style="cursor:pointer;">아이디 찾기 |</li>          
          		<li onclick="window.open('${conPath}/member/findPw.do', '_blank', 'width=600, height=500');" style="cursor:pointer;">&nbsp;비밀번호 찾기 |</li>
          		<li onclick="location.href='${conPath}/member/joinMember.do'" style="cursor:pointer;">&nbsp;회원가입</li>
      		</ul>
   		</div>  
   		<div id="buttons">
      		<input type="submit" value="로그인" class="submit" onclick="return loginCheck()">      
      		<br>	  
   		</div>
   		<div id="content"> 회원정보와 관련된 문의사항이 있으시면 고객센터에 연락하세요.<br>
   		고객만족센터 : 1588 - 1119
   		</div>
   </form>
</div>
</body>
<jsp:include page="../main/footer.jsp"/>