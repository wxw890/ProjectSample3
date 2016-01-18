<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Forte | About</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/foundation.min.css" type="text/css">
<link rel="stylesheet" href="css/superfish.css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Caption|Open+Sans' rel='stylesheet' type='text/css'>
<script src="js/vendor/custom.modernizr.js"></script>
<script>
Modernizr.load({
    // test if browser understands media queries
    test: Modernizr.mq('only all'),
    // if not load ie8-grid
    nope: 'css/ie8-grid-foundation-4.css'
});
</script>
<!--[if lt IE 9]>
<link rel="stylesheet" href="css/ie-fixes.css">
<![endif]-->
</head>
<body>
<div class="call top-call-to-action">
  <div class="row">
    <div class="large-12 columns loginstyles">
      <div class="social-icons">
        <ul>
          <li><a href="#">t</a></li>
          <li><a href="#">f</a></li>
          <li><a href="#">y</a></li>
          <li><a href="#">p</a></li>
          <li><a href="#">d</a></li>
        </ul>
      </div>
     
     <c:if test="${name==null}">
   <span><a href="register.member">회원가입</a></span>
   <span><a href="login.member">로그인   </a></span>
   </c:if>
   
   <c:if test="${name!=null}">
   ${name}님 환영합니다.
   <span><a href="logout.member">로그아웃</a></span>
   <span><a href="loginchange.member">비밀번호 변경하기</a></span>
   </c:if> </div>
  </div>
</div>
<div class="header">
  <div class="row">
    <div class="large-12 twelve columns">
      <div class="logo"><a href="index.jsp"> <img src="images/logo.png" alt=""></a> </div>
    </div>
  </div>
</div>
<div class="topmenu">
  <div class="row">
    <div class="large-12 twelve columns hide-for-small">
      <ul class="sf-menu">
        
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="gallery.jsp">Gallery</a></li>
        <li><a href="contact.jsp">Contact Us</a>
          <ul class="dropdown">
            <li><a href="#">Dropdown Level 1a</a>
              <ul>
                <li><a href="#">Dropdown Level 2a</a></li>
                <li><a href="#">Dropdown Level 2b</a></li>
              </ul>
            </li>
            <li><a href="#">Dropdown Level 1b</a></li>
            <li><a href="#">Dropdown Level 1c</a></li>
            <li><a href="#">Dropdown Level 1d</a></li>
            <li><a href="#">See all &rarr;</a></li>
          </ul>
        </li>
        <li><a href="contact.jsp">게시판</a>
		        <ul class="dropdown">
			        <li><a href="list.board" onclick="fnTest(${email})">공지사항</a></li>
			        <li><a href="list.board1" onclick="fnTest1(${email})">자유게시판</a></li>
			        <li><a href="list.board2" onclick="fnTest2(${email})">Q&A</a></li>
		        </ul>
	    </li>
        <li><a href="blog.jsp">학원소개</a></li>
        <li><a href="#">스터디좌석 예약</a>
           <ul class="dropdown">
              <li><a href="#">스터디좌석 예약하기</a></li>
              <li><a href="#">예약 확인</a></li>
           </ul>
      </ul>
    </div>
    <div class="large-12 twelve columns show-for-small">
      <form name="dropdown" action="#">
        <select name="selected" id="target" accesskey="E" onChange="goToNewPage(document.dropdown.selected)">
          <option value="index.jsp">Home</option>
          <option value="about.jsp">About Us</option>
          <option value="gallery.jsp">Gallery</option>
          <option value="contact.jsp">Contact Us</option>
          <option value="blog.jsp">Blog</option>
        </select>
      </form>
    </div>
  </div>
</div>

<!-- 이부분이 약관동의 부분 -->
 <h2 align="center">가입 약관 동의</h2>
   <div class="orange_box">
      
      <h2 align="center" style="margin-top: 80px">회원가입약관</h2>
      <div class="text_box" align="center">
         <textarea style="width:90%;height:250px;" rows=10 readonly class="textareabox">
제  1 조 (목적)
중앙에이치티에이(주)에서 운영하는 IT 전문교육 기관의 인터넷 서비스 사이트입니다.
가입하신 회원들께는 홈페이지에서 제공하는 정보 및 기능을 이용하실 수 있습니다.
약관에 동의함을 선택하시면 이 약관에 동의하는 것으로 간주하며 회원가입을 하실 수 있게 됩니다.

제  2 조 (회원의 종류)
    홈페이지의 회원은 개인회원으로만 구성됩니다.
      가. 개인회원
        - 개인회원은 회원가입신청서를 작성한 개인 사용자로서 홈페이지의 서비스를 사용할 수 있습니다.
        - 개인회원은 교육신청시 고용보험적용을 선택하면 고용보험혜택을 받으실 수 있습니다.
          (고용보험 환급 대상의 경우)

제  3 조 (회원등록정보)
회원 가입 시 작성하는 모든 회원 정보들은 홈페이지의 서비스 제공에 필요한 경우를 제외하고, 다른 목적으로 사용되지 않습니다. 허위정보를 기재하였을 경우 발생하는 불이익은 책임지지 않으며, 홈페이지의 서비스 제한 조치를 받을 수 있습니다.
또한 회원정보는 언제든지 수정이 가능하지만, 이름과 ID, 주민등록번호 등 고유의 식별정보는 변경이 불가능하므로 작성시 주의해야 합니다.

제  4 조 (서비스 이용)
      가. 홈페이지의 회원은 다음의 서비스를 받으실 수 있습니다.
       - 정규 과정 온라인신청
       - 정규/단기/컨퍼런스 과정 온라인 신청
       - 강사모집 온라인지원
       - 커뮤니티 서비스
       - 메일링 서비스
       - 게시판 글쓰기
     나. 위의 서비스를 받기 위해서는 사용자 로그인을 하셔야 합니다.
     다. 홈페이지의 서비스는 지속적으로 추가 제공될 것이며, 불가피한 사정에 의해 서비스의 내용을 변경하거나 중단할 수 있습니다.
     라. 서비스가 변경되거나 중단되는 경우 회원에게 홈페이지를 통해서 공지합니다.

제  5 조 (교육, 컨퍼런스, 강사 신청)
    중앙에이치티에이(주)에서 실시하는 IT전문교육 정규과정, 단기/주말 과정, 컨퍼런스, 강사신청은 
    홈페이지를 통해서 온라인에서 할 수 있습니다. 각 신청서비스는 소정 양식의 신청서 작성을 통해서 이루어지며 신청서에 입력된 정보는 홈페이지의 신청 및 결제 시스템에 전송되어 처리됩니다.

제  6 조 (이용제한)
     회사는 다음 각 호에 해당하는 이용계약신청에 대하여는 이를 승낙하지 아니 합니다.
     가. 다른 사람의 명의를 사용하여 신청하였을 때
     나. 본인의 실명으로 신청하지 않았을 때
     다. 이용 계약 신청서의 내용을 허위로 기재하였을 때
     라. 사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로 신청하였을 때

제  7 조 (이용자의 ID와 비밀번호에 대한 의무)
     가. ID와 비밀번호에 관한 모든 관리책임은 이용자에게 있습니다.이용자에게 부여된 ID 및 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 이용자에게 있습니다.
 자신의 ID가 부정하게 사용된 경우 이용자는 반드시 홈페이지 웹마스터에게 전화(070-8240-3211)나 이메일(edu@jhta.co.kr)로 그 사실을 통보해야 합니다.
     나. 아이디 및 비밀번호는 다음의 사항을 준수하여 신청하여야 합니다.
      - 6자 이상 12자 이하로 설정하셔야 합니다.
      - 영문자와 숫자를 혼용하셔야 합니다.
      - ID가 포함되거나 동일하지 않아야 합니다.
      - 동일한 문자가 4회 이상 연속되어서는 안됩니다.
      - 위 사항의 모든 사항에 부합되어야 정식으로 회원가입을 하실 수 있습니다.

제  8 조 (회원의 게시물 관리)
    홈페이지 서비스에 회원이 게시하거나 등록한 내용물이 다음 사항에 해당된다고 판단되는 경우에 사전통지 없이 삭제할 수 있습니다.
      가. 타인을 비방하거나 중상모략으로 개인 및 단체의 명예를 손상시키는 내용인 경우
      나. 공공질서 및 미풍양속에 위반되는 내용인 경우
      다. 범죄적 행위에 부합된다고 인정되는 내용인 경우
      라. 타인의 저작권 등 기타의 권리를 침해하는 내용인 경우
      마. 기타 관계 법령이나 회사에서 정한 규정에 위배되는 내용인 경우
      바. 비실명의 글 또는 사실에 근거하지 않은 내용인 경우

제  9 조 (저작권의 귀속 및 이용제한)
홈페이지에 서비스되는 저작물에 대한 지적재산권은 중앙에이치티에이㈜에 귀속 됩니다.
사전동의 없이 복제, 전송, 출판, 배포, 방송 등 기타 방법에 의해 제 3자에게 제공해서는 안됩니다.
또한, 홈페이지에 작성된 게시물에 대한 권리는 중앙에이치티에이㈜에 있습니다.

제  10조 (책임제한)
가.  천재지변, 전쟁 및 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 대한 책임이 면제됩니다. 
나.  서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 발생한 손해에 대한 책임이 면제됩니다.
다.  이용자의 컴퓨터 오류에 의해 손해가 발생한 경우, 또는 회원이 신상정보 및 전자우편 주소를 부실하게 기재하여 손해가 발생한 경우 책임을 지지 않습니다. 
라.  회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지 않습니다.  어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 얻은 이득이나 입은 손해에 대해 책임이 없습니다.
마.  회원 간 또는 회원과 제3자간에 서비스를 매개로 하여 물품거래 혹은 금전적 거래 등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다. 
바.  서비스 이용과 관련하여 귀하에게 발생한 손해 중 귀하의 고의, 과실에 의한 손해에 대하여 책임을 부담하지 아니합니다. 

제 11조 (준거법 및 재판관할)
가. 중앙에이치티에이㈜ 와 “회원” 간 제기된 소송은 대한민국법을 준거법으로 합니다.
나. 중앙에이치티에이㈜ 와 “회원”간 발생한 분쟁에 관한 소송은 민사소송법 상의 관할법원에 제소합니다
다. 이 약관에 명시되지 않은 사항은 전기통신기본법,전기통신사업법 및 기타 관련법령의 규정에 의합니다.

부칙 
가. 이 약관은 2013년 8월 1일부터 적용 됩니다.   
나. 2001년 2월 4일부터 시행되던 기존약관은 본 약관으로 대체 합니다.
                       </textarea>
      </div>

   <div class="register_form1">
      <h2 align="center" style="margin-top: 30px">개인정보취급방침</h2>
      <div class="text_box" align="center">
         <textarea style="width:90%;height:250px;"  rows=10 readonly class="textareabox">&lt;중앙에이치티에이(주)&gt;(이하 "HTA")는 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.
 
"HTA"는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
 
○ 본 방침은부터 2013년 8월 1일부터 시행되며 이전 방침은 본 방침으로 대체 됩니다.
 
1. 개인정보의 처리 목적
"HTA"는 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.
 
가. 홈페이지 회원가입 및 관리
회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 각종 고지·통지, 고충처리, 분쟁 조정을 위한 기록 보존 등을 목적으로 개인정보를 처리합니다.
 
나. 서비스 제공
서비스 제공, 콘텐츠 제공, 맞춤 서비스 제공, 본인인증, 연령인증 등을 목적으로 개인정보를 처리합니다.
 
다. 마케팅 및 광고에의 활용
신규과정 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공 , 인구통계학적 특성에 따른 서비스 제공 및 광고 게재 , 서비스의 유효성 확인, 접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.
 
2. 개인정보 파일 현황
가. 개인정보 파일명 : "HTA" 회원정보 파일
- 회원가입시 개인정보 항목 : 아이디, 패스워드, 이름, 이메일, 휴대전화번호
-정규과정 신청시 개인정보 항목 : 학력, 직업, 보유자격증
-단기과정 신청시 개인정보 항목(환급시) : 회사정보(회사명, 부서명, 전화번호, 펙스, 사업자번호)
- 수집방법 : 홈페이지, 전화/팩스
- 보유근거 : 고용보호법 시행령 제41조, 시행규칙 제60조 사업주 또는 훈련기관
            고용정책기본법 제15조(고용·직업 정보의 수집 및 제공), 제6조(직업능력개발훈련정보망의 구축)
- 보유기간 : 5년
- 관련법령 : 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년,
            신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년,
            대금결제 및 재화 등의 공급에 관한 기록 : 5년,
            계약 또는 청약철회 등에 관한 기록 : 5년
 
3. 개인정보의 처리 및 보유 기간
① "HTA"는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집시에 동의 받은 개인정보 보유, 이용기간 내에서 개인정보를 처리, 보유합니다.
 
② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.
가.&lt;홈페이지 회원가입 및 관리&gt;
&lt;홈페이지 회원가입 및 관리&gt;와 관련한 개인정보는 수집.이용에 관한 동의일로부터&lt;영구&gt;까지 위 이용목적을 위하여 보유.이용됩니다.
-보유근거 : 고용정책기본법 제15조(고용·직업 정보의 수집 및 제공), 제6조(직업능력개발훈련정보망의 구축)
 
4. 개인정보의 제3자 제공에 관한 사항
 
① "HTA"는 정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.
② "HTA"는 다음과 같이 개인정보를 제3자에게 제공하고 있습니다.
 
- 개인정보를 제공받는 자 : HRD-Net
- 제공받는 자의 개인정보 이용목적 : 직업능력개발정보망 운영 및 관리
- 제공받는 자의 보유.이용기간: 영구 (HRD-Net 회원정보 파일)
 
5. 개인정보처리 위탁
① &lt;중앙에이치티에이(주)&gt;("HTA")은(는) 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
 
가. 없음
- 위탁받는 자 (수탁자) : 없음
- 위탁하는 업무의 내용 : 없음
- 위탁기간 : 없음
 
 
② "HTA"는 위탁계약 체결시 개인정보 보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적&#8228;관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리&#8228;감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.
 
③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.
 
 
 
6. 정보주체의 권리,의무 및 그 행사방법 이용자는 개인정보주체로서 다음과 같은 권리를 행사할 수 있습니다.
 
① 정보주체는 "HTA"에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.
가. 개인정보 열람요구
나. 오류 등이 있을 경우 정정 요구
다. 삭제요구
라. 처리정지 요구
② 제1항에 따른 권리 행사는 "HTA"에 대해 개인정보 보호법 시행규칙 별지 제8호 서식에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 "HTA"는 이에 대해 지체 없이 조치하겠습니다.
③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 "HTA"는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.
④ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
 
7. 처리하는 개인정보의 항목 작성
 
① "HTA"는 다음의 개인정보 항목을 처리하고 있습니다.
 
가. 홈페이지 회원가입 및 관리
- 필수항목 : 아이디, 패스워드, 이름, 이메일, 휴대전화번호, 이름, 접속 로그
 
8. "HTA"는 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.
 
-파기절차
이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.
-파기기한
이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.
 
-파기방법
전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.
종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
 
9. 개인정보의 안전성 확보 조치 "HTA"는 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.
 
가. 개인정보 취급 직원의 최소화 및 교육
 개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.
 
10. 개인정보 보호책임자 작성
① "HTA"는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
 
▶ 개인정보 보호책임자
성명 :한상훈
직급 :팀장
연락처 :070-8240-3211, master@jhta.co.kr, 02-777-5407
※ 개인정보 보호 담당부서로 연결됩니다.
 
▶ 개인정보 보호 담당부서
부서명 :교육서비스팀
담당자 :한상훈
연락처 :070-8240-3211, master@hta.co.kr, 02-777-5407
② 정보주체께서는 "HTA"의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. "HTA"는 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.                     </textarea>
      </div>
      <p>
         
      </p>
   </div>
   
   <form action="stap2" method="POST">
      <label style="width:80px;margin:0 auto;"> 
      <input type="checkbox" name="agree" id="chkbox" value="true">약관 동의<br />
      </label><br /> 
      <label style="width:80px;margin:0 auto;"><input type="submit" value="다음 단계로 이동"/></label>
   </form>

   </div>
   <!-- //box -->








<div class="footer">
  <div class="row">
    <div class="large-12 twelve columns">
      <div class="row">
        <div class="large-4 four small-12 columns">
          <div class="contact">
            <h3>contacts us</h3>
            <img src="images/contact-us.png" alt="">
            <div class="contact-icons">
              <ul>
                <li class="phone1 mobile">(342)908898</li>
                <li class="email">email@domain.com</li>
                <li class="phone2">1800809000</li>
                <li class="fax">(132)1239040</li>
              </ul>
            </div>
            <p>15 Willson Street Oakliegh, 2211, Melbourne,Victoria, Australia</p>
          </div>
          <div class="social-icons">
            <ul>
              <li><a href="#">t</a></li>
              <li><a href="#">f</a></li>
              <li><a href="#">y</a></li>
              <li><a href="#">p</a></li>
              <li><a href="#">d</a></li>
            </ul>
          </div>
        </div>
        <div class="large-4 four small-12 columns">
          <div class="information">
            <h3>information</h3>
            <ul>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
            </ul>
          </div>
        </div>
        <div class="large-4 four small-12 columns">
          <div class="quick-contacts">
            <h3>quick contacts</h3>
            <form action="#" method="post" class="quick-contact-form">
              <table>
                <tr>
                  <td><input type="text" name="name" placeholder="Name:"></td>
                </tr>
                <tr>
                  <td><input type="text" name="email" placeholder="Email:"></td>
                </tr>
                <tr>
                  <td><input type="text" name="subject" placeholder="Subject:"></td>
                </tr>
                <tr>
                  <td><textarea  name="message" placeholder="Message:"></textarea></td>
                </tr>
                <tr>
                  <td style="text-align:right;"><input type="submit" name="submit" value="Submit"></td>
                </tr>
              </table>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="theme-credits">
    <p>&copy; 2045 All rights reserved by <a href="#">Forte.</a> Design by: <a href="http://topwebsitetemplates.org">topwebsitetemplates.org</a></p>
  </div>
</div>
<div id="recaptcha_container"></div>
<script src="js/jquery.min.js"></script>
<script src="js/superfish.js"></script>
<script src="js/hoverIntent.js"></script>
<script src="js/slider/jquery.flexslider.js"></script>
<script src="js/slider/jquery.testimonialslider.js"></script>
<script>
Modernizr.load({
    test: Modernizr.placeholder,
    nope: 'js/placeholder.min.js'
});
function goToNewPage() {
    if (document.getElementById('target').value) {
        window.location.href = document.getElementById('target').value;
    }
}
</script>
<script>
$(document).ready(function () {
    $('ul.sf-menu').superfish({
        animation: {
            height: 'show'
        },
        delay: 400
    });
    $('.flexslider').flexslider({
        animation: "slide"
    });
    $('.testimonialslider').testimonialslider({
        animation: "fade",
        animationLoop: false,
        itemMargin: 50,
        itemMargin: 0,
        maxItems: 1,
        after: function (slider) {
            var currentSlide = parseInt(slider.currentSlide);
            var currentSlide = parseInt(slider.currentSlide);
            var currentSlideHeight = $('.testimonialslider ul.slides').find('li').eq(currentSlide).css('height');
            $('.testimonialslider ul.slides').animate({
                height: currentSlideHeight
            }, 100);
        }
    });
});
</script>
</body>
</html>




