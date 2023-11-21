<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<c:set var = "conPath" value = "${pageContext.request.contextPath }"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어드벤처 월드 리뷰 페이지</title>
<link href = "${conPath }/css/world.css" rel = "stylesheet">
</head>
<body>
<jsp:include page="../main/header.jsp"/>
<div style="clear: both;"></div>
<article>
<div class="attractionForm">
	<div class="page-title" style = "text-align: center; font-weight: bold;">	
		<div class="container" style = "background-color: #5c10e6; color: white;">
			<h3 style="font-family:'IBM Plex Sans KR', sans-serif; font-size: 50px; text-align:center;">Adventure World를 찾아주신 분들의 <br> 감사한 후기!</h3>		
		</div>
		<br><br>
	</div>
	<br>	
	<div class="att_back">		
		<div id="att_list">
			<a href="${conPath }/attraction/attractionDetail.do?aid=${attractions.aid }">
				<img src="${conPath }/images/attraction_images/lotty_kingdom.jpg"/>
				<img src = "${conPath }/images/point_star_on.png" style = "width: 15px; height: 15px; padding-top: 5px;"><span style = "font-size: 0.8em; font-weight: bold;">5</span>&nbsp;&nbsp;<span style = "font-size: 0.8em; font-weight: bold;">행복의 나라에서</span>
				<h6>2023.11.20</h6>
				<img src = "${conPath }/images/attraction_images/lotty_kingdom.jpg" style = "width:25px; height: 25px;"><span style = "font-size:0.66em;">종합이용권</span>									
			</a>
		</div>
		<div id="att_list">
			<a href="${conPath }/attraction/attractionDetail.do?aid=${attractions.aid }">
				<img src="${conPath }/images/attraction_images/lotty_kingdom.jpg"/>
				<h5>행복의 나라에서</h5>
				<h6>2023.11.20</h6>
				<img src = "${conPath }/images/attraction_images/lotty_kingdom.jpg" style = "width:25px; height: 25px;"><span style = "font-size:0.66em;">종합이용권</span>									
			</a>
		</div>
		<div id="att_list">
			<a href="${conPath }/attraction/attractionDetail.do?aid=${attractions.aid }">
				<img src="${conPath }/images/attraction_images/lotty_kingdom.jpg"/>
				<h5>행복의 나라에서</h5>
				<h6>2023.11.20</h6>
				<img src = "${conPath }/images/attraction_images/lotty_kingdom.jpg" style = "width:25px; height: 25px;"><span style = "font-size:0.66em;">종합이용권</span>									
			</a>
		</div>
		<div id="att_list">
			<a href="${conPath }/attraction/attractionDetail.do?aid=${attractions.aid }">
				<img src="${conPath }/images/attraction_images/lotty_kingdom.jpg"/>
				<h5>행복의 나라에서</h5>
				<h6>2023.11.20</h6>
				<img src = "${conPath }/images/attraction_images/lotty_kingdom.jpg" style = "width:25px; height: 25px;"><span style = "font-size:0.66em;">종합이용권</span>									
			</a>
		</div>
		<div id="att_list">
			<a href="${conPath }/attraction/attractionDetail.do?aid=${attractions.aid }">
				<img src="${conPath }/images/attraction_images/lotty_kingdom.jpg"/>
				<h5>행복의 나라에서</h5>
				<h6>2023.11.20</h6>
				<img src = "${conPath }/images/attraction_images/lotty_kingdom.jpg" style = "width:25px; height: 25px;"><span style = "font-size:0.66em;">종합이용권</span>									
			</a>
		</div>
		<div id="att_list">
			<a href="${conPath }/attraction/attractionDetail.do?aid=${attractions.aid }">
				<img src="${conPath }/images/attraction_images/lotty_kingdom.jpg"/>
				<h5>행복의 나라에서</h5>
				<h6>2023.11.20</h6>
				<img src = "${conPath }/images/attraction_images/lotty_kingdom.jpg" style = "width:25px; height: 25px;"><span style = "font-size:0.66em;">종합이용권</span>									
			</a>
		</div>
		<div id="att_list">
			<a href="${conPath }/attraction/attractionDetail.do?aid=${attractions.aid }">
				<img src="${conPath }/images/attraction_images/lotty_kingdom.jpg"/>
				<h5>행복의 나라에서</h5>
				<h6>2023.11.20</h6>
				<img src = "${conPath }/images/attraction_images/lotty_kingdom.jpg" style = "width:25px; height: 25px;"><span style = "font-size:0.66em;">종합이용권</span>									
			</a>
		</div>
		<div id="att_list">
			<a href="${conPath }/attraction/attractionDetail.do?aid=${attractions.aid }">
				<img src="${conPath }/images/attraction_images/lotty_kingdom.jpg"/>
				<h5>행복의 나라에서</h5>
				<h6>2023.11.20</h6>
				<img src = "${conPath }/images/attraction_images/lotty_kingdom.jpg" style = "width:25px; height: 25px;"><span style = "font-size:0.66em;">종합이용권</span>									
			</a>
		</div>
		<div id="att_list">
			<a href="${conPath }/attraction/attractionDetail.do?aid=${attractions.aid }">
				<img src="${conPath }/images/attraction_images/lotty_kingdom.jpg"/>
				<h5>행복의 나라에서</h5>
				<h6>2023.11.20</h6>
				<img src = "${conPath }/images/attraction_images/lotty_kingdom.jpg" style = "width:25px; height: 25px;"><span style = "font-size:0.66em;">종합이용권</span>									
			</a>
		</div>
		<div id="att_list">
			<a href="${conPath }/attraction/attractionDetail.do?aid=${attractions.aid }">
				<img src="${conPath }/images/attraction_images/lotty_kingdom.jpg"/>
				<h5>행복의 나라에서</h5>
				<h6>2023.11.20</h6>
				<img src = "${conPath }/images/attraction_images/lotty_kingdom.jpg" style = "width:25px; height: 25px;"><span style = "font-size:0.66em;">종합이용권</span>									
			</a>
		</div>	
	</div>	
</div>
</article>
<br><br>
<br><br>
<jsp:include page="../main/footer.jsp"/>	
</body>
</html>