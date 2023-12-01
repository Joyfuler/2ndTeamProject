<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var = "conPath" value = "${pageContext.request.contextPath }"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../main/header.jsp"/>
<script src="https://code.jquery.com/jquery-latest.min.js">
</script>
<script>	
	function agreeChk(){
	if ($('input.disAgree').prop('checked')){	
		alert('회원 약관에 동의하셔야 가입이 가능합니다');
		return false;
	} else {
	return true;
	}
}
</script>
</head>
<body>
<article>
<div class="join2">	
		<div class="join_title">회원가입 약관</div>
			<div class="box">
				<div class="text1" style = "text-align: center;">
					어드벤처 월드 회원가입 페이지에 오신 것을 환영합니다.<br>
					회원가입 전, 개인정보 유출 방지를 위해 아래 약관에 동의해주세요. 
				</div>
			<div class="text2">
				<textarea cols="152" rows="13" readonly>제 1 장 총 칙
제 1 조 (목적)

이 이용약관(이하 '약관')은 주식회사 '어드벤처 월드'(이하 회사라 합니다)와 이용 고객(이하 '회원')간에 회사가 제공하는 서비스의 가입조건 및 이용에 관한 다음의 제반 사항과 기타 기본적인 사항을 구체적으로 규정함을 목적으로 합니다.

제 2 조 (이용약관의 효력 및 변경)

(1) 이 약관은 어드벤처 월드 웹사이트(이하 어드벤처 월드)에서 온라인으로 공시함으로써 효력을 발생하며, 합리적인 사유가 발생할 경우 관련법령에 위배되지 않는 범위 안에서 개정될 수 있습니다. 개정된 약관은 온라인에서 공지함으로써 효력을 발휘하며, 이용자의 권리 또는 의무 등 중요한 규정의 개정은 사전에 공지합니다.

(2) 회사는 합리적인 사유가 발생될 경우에는 이 약관을 변경할 수 있으며, 약관을 변경할 경우에는 지체 없이 이를 사전에 공시합니다.

(3) 이용고객은 변경된 약관에 동의하지 않으면, 언제나 "서비스" 이용을 중단하고, 이용계약을 해지할 수 있습니다. 약관의 효력발생일 이후의 계속적인 "서비스" 이용은 약관의 변경사항에 대한 이용고객의 동의로 간주됩니다.


제 3 조 (약관외 준칙)

(1) 이 약관은 회사가 제공하는 개별서비스에 관한 이용안내(이하 서비스별 안내라 합니다)와 함께 적용합니다.

(2) 이 약관에 명시되지 아니한 사항에 대해서는 별도의 세부 약관, 상관행, 회사의 공지, 이용안내, 관계법령 및 서비스별 안내의 취지에 따라 적용할 수 있습니다.


제 4 조 (용어의 정의)

(1) "이용자" 또는 "회원"이란  어드벤처 월드에 접속하여 본 약관에 따라 가입하여, 이용 고객의 식별과 이용고객의 서비스 이용을 위하여 이용고객 본인이 직접 선정하고 회사가 부여하는 문자와 숫자 조합인 ‘이용자번호(ID)’와 그에 따라 일치된 이용고객임을 확인하기 위하여 이용고객 본인이 선정한 ‘비밀번호’를 이용하여 서비스를 받는 자를 말합니다.

(2) 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별 안내에서 정하는 바에 의합니다.


제 2 장 이용계약 체결


제 5 조 (이용 계약의 성립)

(1) 이용계약은 이용고객의 본 이용약관 내용에 대한 동의와 이용신청에 대하여 회사의 이용승낙으로 성립하여 이용약관에 대한 동의는 이용신청 당시 해당 웹의 '동의함' 버튼을 누름으로써 의사표시를 합니다.


제 6 조 (서비스 이용 신청)

(1) 회원으로 가입하여 본 서비스를 이용하고자 하는 이용고객은 회사에서 요청하는 제반 정보(이름, 주민등록번호, 연락처 등)를 제공하여야 합니다.

(2) 모든 회원은 반드시 회원 본인의 이름과 주민등록번호를 제공하여야만 서비스를 이용할 수 있으며, 실명으로 등록을 한 사용자만이 권리를 주장할 수 없습니다.


제 7 조 (이용자의 개인 정보 보호)

회사는 관련법령이 정하는 바에 따라서 이용자 등록정보를 포함한 이용자의 개인정보를 보호하기 위하여 노력합니다. 이용자의 개인정보보호에 관해서는 관련법령 및 회사가 정하는 "개인정보보호정책"에 의합니다.


제 8 조 (이용 신청의 승낙과 제한)

(1) 이용자가 되고자 하는 자는 회사가 정한 가입 양식에 따라 회원정보를 기입하고 "가입하기" 단추를 누르는 방법으로 회원 가입을 신청합니다.

(2) 회사는 아래사항에 해당하는 경우에 대해서 승낙하지 아니 합니다.

ㄱ. 등록 내용에 허위, 기재누락, 오기가 있는 경우

ㄴ. 부정한 용도로 본 서비스를 이용하고자 하는 경우

ㄷ. 본 사이트의 정책과 위배되는 행위를 반복적으로 자행하여 회원 자격 상실을 한 적이 있는 경우

ㅂ. 본 서비스와 경쟁관계에 있는 이용자가 신청하는 경우

(3) 서비스 이용신청이 다음 각 호에 해당하는 경우에는 회사는 그 신청에 대하여 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다.

ㄱ. 설비의 여유가 없는 경우

ㄴ. 기술상 지장이 있는 경우

ㄷ. 기타 귀책사유로 이용승낙이 곤란한 경우

(4) 이용신청고객이 관계법령에서 규정하는 미성년자일 경우에 회사는 서비스 별 안내에서 정하는 바에 따라 승낙을 보류할 수 있습니다.


제 2 장 서비스의 이용

제 9 조 (이용자ID 관리)

(1) 이용자 ID와 비밀번호에 관한 모든 관리책임은 회원에게 있습니다.

(2) 회사는 이용자 ID에 의하여 제반 이용자 관리업무를 수행 하므로 회원이 이용자 ID를 변경하고자 하는 경우 회사가 인정할 만한 사유가 없는 한 이용자 ID의 변경을 제한할 수 있습니다.

(3) 이용고객이 등록한 이용자 ID 및 비밀번호에 의하여 발생되는 사용상의 과실 또는 제 3자에 의한 부정사용 등에 대한 모든 책임은 해당 이용고객에게 있습니다.


제 10 조 (게시물의 관리)

회사는 다음 각 호에 해당하는 게시물이나 자료를 사전통지 없이 삭제하거나 이동 또는 등록 거부를 할 수 있습니다.

ㄱ. 다른 회원 또는 제 3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우

ㄴ. 공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우

ㄷ. 불법복제 또는 해킹을 조장하는 내용인 경우

ㄹ. 영리를 목적으로 하는 광고일 경우

ㅁ. 범죄와 결부된다고 객관적으로 인정되는 내용일 경우

ㅂ. 다른 이용자 또는 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우

ㅅ. 회사에서 규정한 게시물 원칙에 어긋나거나, 게시판 성격에 부합하지 않는 경우

ㅇ. 기타 관계법령에 위배된다고 판단되는 경우


제 11 조 (게시물에 대한 저작권)

(1) 회원이 서비스 화면 내에 게시한 게시물의 저작권은 게시한 회원에게 귀속됩니다. 또한 회사는 게시자의 동의 없이 게시물을 상업적으로 이용할 수 없습니다. 다만 비영리 목적인 경우는 그러하지 아니하며, 또한 서비스내의 게재권을 갖습니다.

(2) 회원은 서비스를 이용하여 취득한 정보를 임의 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.

(3) 회사는 회원이 게시하거나 등록하는 서비스 내의 내용물, 게시 내용에 대해 제 14조 각 호에 해당된다고 판단되는 경우 사전통지 없이 삭제하거나 이동 또는 등록 거부할 수 있습니다.


제 12 조 (정보의 제공)

(1) 회사는 회원에게 서비스 이용에 필요가 있다고 인정되는 각종 정보에 대해서 전자우편이나 서신우편 등의 방법으로 회원에게 제공할 수 있습니다.

(2) 회사는 서비스 개선 및 회원 대상의 서비스 소개 등의 목적으로 회원의 동의 하에 추가적인 개인 정보를 요구할 수 있습니다.


제 13 조 (광고게재 및 광고주와의 거래)

(1) 회사가 회원에게 서비스를 제공할 수 있는 서비스 투자기반의 일부는 광고게재를 통한 수익으로부터 나옵니다. 회원은 서비스 이용시 노출되는 광고게재에 대해 동의합니다.

(2) 회사는 서비스상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래를 함으로써 발생하는 손실과 손해에 대해 책임을 지지 않습니다.

				</textarea>
			</div>
			<div class="text3">
				<form action = "${conPath }/member/join.do">
				<input type="radio" name="agree">약관에 동의합니다&nbsp;&nbsp;&nbsp;
				<input type="radio" name="agree" class = "disAgree" checked= "checked">동의하지 않습니다
			</div>
		</div>
		<div class="bottom">
			<input type="submit" value="다음" class="submit" onclick="return agreeChk()">
				</form>						
		</div>			
	</div>
</article>
<jsp:include page="../main/footer.jsp"/>	
</body>
</html>