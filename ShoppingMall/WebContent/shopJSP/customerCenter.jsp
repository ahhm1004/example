<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head> 
<link rel="stylesheet" type="text/css" href="/ind-script/optimizer.php?filename=rZXBTgQhDIbvg1efo7sefICNB2PiRZ-AYbpAZCjSknXfXowXdTUxQ6-UftC__AUCrQj7mwqlkq92hYpMrToExwzHSlnA0bpSvuoL1_Cf_egmptQkUp5metuY2ES2HprsGeu2VLFzwj9SbSlwIFsXePoKuZAHnWmMlcG_crC1QGlzis4EWRPwgmZBjj4Dv8R8uwNz8qqcXj01Ged0WWbLOLWoxxKiJLHoAQMmRVrv9NKconbF-pitoKKCdtaDXZhskPfTeKPX-zY8xoVLin3oUTdOO_lxRqHSFDwQ0C4azWO01YV7JdrDsxEqj5jbOOvuYFDcfmf2ClWm2GMfBIXB3weEp3o23BS8fSSSEeU_vw_ojzy63839Dg&type=css&k=a4a90cf68e83f228f01054c1e63ceb08075aaac9&t=1560907902" />
<link rel="stylesheet" type="text/css" href="/ind-script/optimizer.php?filename=rdExcgIxDAXQPk6bcygkAyegCSV7AiNrbM3alrHkMNyeTYYTsFupkd5I-pCkEBC6odQV4lWT7w3auGRGl6xk0EAukHKsoDPXwyegKhQJIxNkf5dhUEY21iRtStwa1_i-9HzANjhK_V3mWWrD1113i__2xeP8ZtLWS51jMpc4BKrrNZRSRmW7b_K61peKBkq-Ywre_PoNT5P7-t4d9m63X49Nxyd2HYzzD8qG5PP4MyFV2yAZ_TMe&type=css&k=f0317fba40f8f1eec77d100daa1fae8f152415d9&t=1513672174" />
<title>AHH 쇼핑몰</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href = "btn.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<header>
<jsp:include page="common/header.jsp" />
</header>

<style>
.container {
	z-index: 1;
}
</style>
</head>
<body>

   <div id="stit_cscenter_info">
      <p></p>
      <center>
         <img src="/shopJSP/image/cs_Main.png" />
      </center>

      <!-- //고객센터 -->



      <!-- 고객센터 버튼 -->
      <div class="container">
         <div class="button-1">
            <div class="eff-1"></div>
            <a href="#"> 공지사항 </a>
         </div>
         <div class="button-1">
            <div class="eff-1"></div>
            <a href="#"> 상품관련 문의 </a>
         </div>
         <div class="button-1">
            <div class="eff-1"></div>
            <a href="#"> 배송관련 문의 </a>
         </div>
         <div class="button-1">
            <div class="eff-1"></div>
            <a href="#"> 입금관련 문의 </a>
         </div>
         <div class="button-1">
            <div class="eff-1"></div>
            <a href="#"> 내 문의 확인하기 </a>
         </div>
      </div>
      <!-- //고객센터 버튼 -->
<!-- a8 자주묻는 질문-->
<div id="faq_list00">
  <table width="100%" border="0" cellpadding="0" cellspacing="0"><tbody><tr><td height="30"></td>
      </tr><tr><td valign="top">
          <!-- faq start -->
          <!-- faq-->
          <script language="">function premier(n) {
              for (var i = 1; i < 8; i++) {
                obj = document.getElementById('premier' + i);
                img = document.getElementById('premier_button' + i);
                if (n == i) {
                  obj.style.display = "block";
                  img.src = "/shopJSP/image/faq_on_0" + i + ".jpg";
                } else {
                  obj.style.display = "none";
                  img.src = "/shopJSP/image/faq_off_0" + i + ".jpg";
                }
              }
            }</script>
          <table border="0" cellpadding="0" cellspacing="0" align="center"><tbody>
          <tr valign="bottom"><td>
          		<button  onclick = "premier(1);" onmouseout='this.style.cursor="hand"' id="premier_button1" style="cursor: pointer; ">전체보기</button>
          		<button  onclick = "premier(2);" onmouseout='this.style.cursor="hand"' id="premier_button2" style="cursor: pointer; ">입금문의</button>
          		<button  onclick = "premier(3);" onmouseout='this.style.cursor="hand"' id="premier_button3" style="cursor: pointer; ">배송문의</button>
          		<button  onclick = "premier(4);" onmouseout='this.style.cursor="hand"' id="premier_button4" style="cursor: pointer; ">배송전 변경/취소</button>
          		<button  onclick = "premier(5);" onmouseout='this.style.cursor="hand"' id="premier_button5" style="cursor: pointer; ">교환 및 환불</button>
          		<button  onclick = "premier(6);" onmouseout='this.style.cursor="hand"' id="premier_button6" style="cursor: pointer; ">적립/쿠폰/예치금</button>
          		<button  onclick = "premier(7);" onmouseout='this.style.cursor="hand"' id="premier_button7" style="cursor: pointer; ">기타문의</button>
       
            </tr></tbody></table><br/>
            <table width="726" border="0" cellpadding="0" cellspacing="0" align="center"><tbody><tr><td height="1" bgcolor="d9d9d9"></td>
              </tr><tr><td valign="top">
                  <span id="premier1" style="display: block; ">
                    <script>var old = '';
                      function menu(name) {
                        submenu = eval("submenu_" + name + ".style");
                        if (old != submenu) {
                          if (old != '') {
                            old.display = 'none';
                          }
                          submenu.display = 'block';
                          old = submenu;
                        } else {
                          submenu.display = 'none';
                          old = '';
                        }
                      }</script>
                    <!-- 00 start -->
                    <table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('0')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">01</font>[입금문의]</b>입금확인이 되지않아요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_0" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>무통장입금시 입금확인은 자동입금시스템으로 매실시간 30분단위로 확인이 되고있습니다.
                                    <br/>주문자의 성함과 혹은 입금 예정자와 실제 입금자의 성함 그리고 주문금액이 일치해야만 자동전산처리가 이루어집니다.
                                    <br/>(카드 결제나 실시간 계좌이체의 경우 자동적으로 입금 확인이 되다보니
                                    <br/>입금확인 문자가 따로 발송되지 않습니다, 주문완료문자가 발송되었다면 입금 확인이 된 것입니다.)
                                    <br/>CD기의경우 잔금 입금이 어려워 초과입금하시는경우 주문서입금 금액과틀려 입금확인이 되지않습니다.
                                    <br/><br/>이럴경우 반드시 저희스타일맨 상담센터나 게시판으로 연락을주셔야 정상적인 입금확인을하실수있습니다.</td></tr></tbody></table><br/><br/><table border="0" width="100%"><tbody><tr><td>A,</td>
                                  <td align="center">주문자명</td>
                                  <td align="center">주문완료금액</td>
                                  <td align="center">입금자명</td>
                                  <td align="center">실제입금자</td>
                                  <td align="center">실제입금금액</td>
                                  <td align="center">입금확인</td></tr><tr><td></td>
                                  <td align="center">홍길동</td>
                                  <td align="center">29500원</td>
                                  <td align="center">홍길동</td>
                                  <td align="center">홍길동</td>
                                  <td align="center">29500원</td>
                                  <td align="center">O (자동입금확인됨)</td></tr><tr><td></td>
                                  <td align="center">홍길동</td>
                                  <td align="center">29500원</td>
                                  <td align="center">홍길동</td>
                                  <td align="center">김삿갓</td>
                                  <td align="center">29500원</td>
                                  <td align="center">X (자동입금확인안됨)</td></tr><tr><td></td>
                                  <td align="center">홍길동</td>
                                  <td align="center">29500원</td>
                                  <td align="center">김삿갓</td>
                                  <td align="center">김삿갓</td>
                                  <td align="center">29500원</td>
                                  <td align="center">O (자동입금확인됨)</td></tr><tr><td></td>
                                  <td align="center">홍길동</td>
                                  <td align="center">29500원</td>
                                  <td align="center">홍길동</td>
                                  <td align="center">홍길동</td>
                                  <td align="center">30000원</td>
                                  <td align="center">X (자동입금확인안됨)</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 00 end --><!-- 01 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('1')" class="hand35td" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">02</font>[입금문의]</b>입금을했는데 주문서가 사라졌어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_1" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>정해진 입금일자안으로 입금완료 처리가 되지 않는 경우 주문서는 자동으로 취소되오니 이 점 꼭 유의해 주세요.(주문서7일간유지)
                                    <br/>이럴 경우 입금만 확인이 되어 상품준비가 이루어지지 않습니다, 우선 상담센터및 게시판으로 문의하시어 상황을 알리신후
                                    <br/>주문서를 다시 작성해주시길 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 01 end --><!-- 02 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('2')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">03</font>[배송문의]</b>배송기간을 알고싶어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_2" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문 후 입금확인이 완료된 시점부터 상품준비에 들어가며 금일 들어온 주문은 다음날 자정을 기준으로 발송준비가 시작됩니다.
                                    <br/>판매되고 있는 상품은 크게 상시 구비상품과 주문후 입고상품으로 나눌수 있는데요
                                    <br/>주문후 상시 구비상품은 당일발송도 가능하며 입고상품의 경우 일반의류의 경우 1~4일(공휴일 및 주말 토,일제외),
                                    <br/>신발 또는 가죽세공 상품의 경우 5~7일(공휴일 및 주말 토,일제외) 소요될수 있으니 이점 이해해주시길 바랍니다.
                                    <br/><br/>주문폭주상품과 수입상품의 경우 생산 및 세관 통관의 시간이 소요되어
                                    <br/>다소간의 지연이 발생할수 있으니 양해 부탁드립니다.
                                    <br/><br/>지연되는상품은 주문후 3일후에 자동적으로 배송지연 문자발송되고있습니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 02 end --><!-- 03 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('3')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">04</font>[배송문의]</b>배송중으로 확인되는데 운송장 정보조회가 되지않아요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_3" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문하신 상품은 배송업무와 동시에 전산처리되어 배송처리가 이뤄지며
                                    <br/>운송장 전산처리후에 배송중 단계로 확인이 가능합니다.
                                    <br/>배송중으로 확인되더라도 스타일맨물류센터에서 출고한시점이 아닌것으로
                                    <br/>대한통운물류센터로 이동후 배송정보를 입력한 시점부터 배송추적이 가능하게됩니다.
                                    <br/><br/>배송중으로 문자를 받아보신 고객님들은 여유있게 오후 8시이후로 배송추적을 해주시면됩니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 03 end --><!-- 04 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('4')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">05</font>[배송문의]</b>부분배송으로 문자를받았어요. 어떻게 확인하나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_4" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>상품에 따라 제작사 제작기간 입고되는 일자가 차이가 있으므로
                                    <br/>가급적 먼저 준비되어 보내드릴 수 있는 상품이 선발송되는 시스템입니다.
                                    <br/>이때 분리되어 발송되더라도 배송료는 모두 스타일맨에서 부담하여 보내드리며
                                    <br/>선발송된 상품확인은 로그인 후 마이페이지 주문내역에서 확인가능합니다.
                                    <br/><br/>만일 조회가 명확히 되지 않으실경우 상담센터나 관련 게시판으로 문의글 남겨주시면 신속히 안내 도와드리겠습니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 04 end --><!-- 05 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('5')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">06</font>[배송문의]</b>배송완료로 확인되나 물건을 못받았어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_5" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>배송이 완료된 주문상품은 스타일맨에서 출고후 지정 택배사에 이동경유중인 상품으로
                                    <br/>정확한 위치 확인을 하고자 하실때는 출고당시의 운송장 번호를 파악,(마이페이지에서 확인가능)
                                    <br/>대한통운상담센터(1588-1255)으로 문의해주시면 더욱 정확하고 신속하게 알수있습니다.
                                    <br/><br/>만약 대한통운택배측과 연락이 어렵거나 처리가 지연될 경우 스타일맨 상담센터나 게시판으로 문의주시면
                                    <br/>신속히 처리후 안내 도와드리도록 하겠습니다.
                                    <br/><br/>운송장 정보를 조회하면 해당지역 대한통운 연락처 열람이 가능하니 기사님 연락처 문의후
                                    <br/>기사님과 협의사항또는 위치확인시 참고해주시길 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 05 end --><!-- 06 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('6')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">07</font>[배송문의]</b>배송완료로 확인되나 운송장 정보조회가 되지않아요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_6" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>일시적으로 배송량이 증가하게되면 심야시간까지 배송업무가 이루어집니다.
                                    <br/>이런경우 택배사의 픽업시간에 대한 제약으로 인해 당일 스타일맨에서는 배송업무가 되더라도 택배사측으로 물건이
                                    <br/>발송되지 않을수있는데요, 통상 다음날 오전에 일괄배송되니 이점 참고해주세요.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 06 end --><!-- 07 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('7')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">08</font>[배송문의]</b>주문하신 상품의 품절안내를 받았어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_7" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문하신 상품을 배송해 드리지 못해 죄송합니다.
                                    <br/>품절건의 경우 주문후 입고 제품의 특성상 품절 확인이 미처 늦게 이루어지는점 양해 부탁드립니다.
                                    <br/>품절된 상품에 관하여 타상품으로의 변경 또는 적립금예치나 환불 원하시는 처리의사를 상담센터나
                                    <br/>게시판으로 알려주세요.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 07 end --><!-- 08 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('8')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">09</font>[배송문의]</b>따로따로 주문했는데, 묶음배송이 가능한가요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_8" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>여러가지 상품을 함께 장바구니를 이용하여 구매 원하는 상품을
                                    <br/>동일자 동시간에 결제 확인된 주문건은 자동으로 묶음처리가 되고 있습니다.
                                    <br/>발송되지 않은 다른일자나 같은일자 주문건(교환건포함)과 신규 주문건의 묶음일 경우 따로 연락을 주시지않으면
                                    <br/>묶음배송이 이루어지지 않을수도있으며 이럴 경우에는 배송료를 부담해주셔야합니다.
                                    <br/><br/>주문 번호가 서로 달라 함께 받아보길 원할 경우 주문을 하시고 상담센터나 게시판을 이용해 알려주셔야하며
                                    <br/>임의적으로 배송료를 제외하고 입금하신경우 입금확인이 불가능해 배송지연이 될수있습니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 08 end --><!-- 09 start --><!--table border="0" width="100%">
                      <tbody>
                        <tr>
                          <td height="25" onclick="menu('9')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">10</font>[배송문의]</b>해외배송도 가능한가요?</td></tr>
                        <tr>
                          <td height="1" bgcolor="d9d9d9"></td>
                        </tr>
                        <tr id="submenu_9" style="DISPLAY: none;">
                          <td align="center">
                            <table border="0" width="100%">
                              <tbody>
                                <tr>
                                  <td>
                                    <br/>현재 거의 모든 지역으로 해외배송을 해 드리고 있습니다.
                                    <br/>해외배송을 원하실 경우 주문시 배송메세지에 수령하실 주소, 수취인, 연락처, 이메일등을 정확하게 남겨주셔야 하구요.
                                    <br/>주문 완료 후 바로 게시판 또는 전화로 알려주셔야 하니 꼭 주문후 게시판 또는 고객센터로 연락 부탁드립니다.
                                    <br/>해외인 경우 전화연결이 불가능 하기 때문에 연락 가능하신 이메일 주소도 꼭 남겨주세요.
                                    <br/>전화가 가능하신경우 바로 연락을 주셔야 조금더 빠른 처리가 가능합니다.
                                    <br/>
                                    <br/>받으실 해외주소지는 배송 메시지에 기재해 주시면 됩니다.
                                    <br/>
                                    <font color="red">
                                      <b>(해외주소는 국내 배송기재란에 기입이 불가하니 꼭 배송메시지에 남겨주세요.)</b>
                                    </font>
                                    <br/>
                                    <br/>주문건 입금은 국내카드,무통장입금으로만 가능합니다.
                                    <br/>
                                    <br/>주문건 입금 확인이 되신 후 배송비용을 측정해 이메일로 안내해 드리구요
                                    <br/>게시판을 이용하여 문의주시면 배송비용에 대한 확인사항을 알려드립니다.
                                    <br/>배송비 입금확인 후 우체국 EMS 택배로 발송이 됩니다.
                                    <br/>
                                    <br/>해외배송인 경우 배송료 입금은 국내카드,무통장 입금으로만 입금처리가 가능합니다.
                                    <br/>(해외카드 사용불가) 배송료 입금여부에 대해 꼭 게시판에 글 남겨주세요.</td></tr>
                              </tbody>
                            </table>
                            <br/>
                            <br/>
                            <br/></td>
                        </tr>
                      </tbody>
                    </table--><!-- 09 end --><!-- 10 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('10')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">10</font>[배송문의]</b>당일배송 상품을 시켰는데 오질않네요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_10" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>당일배송이 시행되는 제품은 재고가 구비되어 당일배송을 원칙으로 하고있으나 고객님들의 사랑에 힘입어
                                    <br/>구비되어있는 수량이 일시소진된후 재생산에 들어가 부득이 당일배송이 시행되지 않을 수 있습니다.
                                    <br/>물론 이런경우 사이트 내에서 알림 또는 문구 수정이 이루어지나 한번에 많은 일을
                                    <br/>정해진 시간내에 처리해야 하는 업무 특성상 다소간의 대처가 늦어질수 있으니
                                    <br/>고객님들의 따뜻한 이해와 격려를 부탁드립니다.
                                    <br/><br/>당일배송 상품과 일반배송 상품을 함께 주문주실경우 당일배송이 유효하지 않게 되어
                                    <br/>일반배송의 기준으로 처리되니 이 점 꼭 유의해주세요.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 10 end --><!-- 11 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('11')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">11</font>[배송전 변경/취소 문의]</b>배송되지 않았다면 상품변경 상품색상 및 사이즈, 주소를 변경하고 싶어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_11" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>변경 요청하는 상품의 경우 배송이 되지 않은 경우에만 변경이 가능합니다.
                                    <br/>변경을 원하는 제품의 정확한 판매명과 옵션값(색상&amp;사이즈)을 상담센터나 1:1게시판으로 알려주세요.
                                    <br/>주문상태는 배송준비중으로 이미 포장이 되어 택배사로 넘어간경우 발송전 변경이 불가능하며
                                    <br/>발송후 일반 교환건으로 접수를 하셔야 처리됩니다.
                                    <br/><br/>발송전 상품에 일부 변경사항이 발생되면 상품을 새로 준비하는 기간이 필요하며 다소 발송이 더 지연될 수 있으니
                                    <br/>이점 양해부탁드립니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 11 end --><!-- 12 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('12')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">12</font>[배송전 변경/취소 문의]</b>아직 배송되지 않았다면 취소를하고싶어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_12" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문서작성 후 입금을 하지않으셨다면 마이페이지에서 고객님이 직접 주문취소가 가능합니다.
                                    <br/><br/>입금후 취소를 원하는 제품은 정확한 판매명과 옵션값(색상&amp;사이즈)을 상담센터나 1:1게시판으로 알려주세요.
                                    <br/>계좌입금 주문서는 환불계좌를 남겨주셔야 빠른 환불처리가 가능하며 카드결제는 부분취소 처리가 가능합니다.
                                    <br/><br/>휴대폰 결제 주문건의 경우엔 부분취소가 불가하여 실구매 만큼 재결제 해주셔야 처음 주문건의 취소가 가능하니
                                    <br/>재결제에 관하여 상담센터나 취소 문의 게시판으로 꼭 문의 주시길 바랍니다.
                                    <br/><br/>주문상태가 "배송준비중" 으로 확인 되더라도 실시간으로 배송이 처리되고 있어 이미 발송완료된 경우가 있을 수 있습니다.
                                    <br/>하루 전 날 취소 접수 해주신 문의건에 대해서만 안전하게 취소 가능하니 참고 부탁드립니다.
                                    <br/><br/>이미 출고가 된 상태라면 수령후에 일반 반품건으로 접수를 하셔야 처리되니 이점 유의해주세요.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 12 end --><!-- 13 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('13')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">13</font>[교환/반품 문의]</b>교환/반품을 하고싶어요</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_13" style="DISPLAY: none;"><td align="left">
                            <table border="0" width="100%"><tbody><tr></tr></tbody></table><br/><br/><p>수령하신 상품을 교환 또는 반품을 원하실 경우 대한통운택배(1588-1255)로 접수하여 착불반송하여 보내주시면 됩니다.
                              <br/><br/>교환/반품/적립은 반품요청서를 작성하여 수령하신날로부터 7일이내 접수해주시고 최대한 빠른시일내에 보내주시기 바랍니다.
                              <br/><br/><strong>
                                <font color="#990000">또한 구매하신 상품의 바코드 택을 꼭 같이 보내주세요</font></strong>
                              <br/><br/>반품 택배비의 경우 상황에 따라 금액이 틀리니 교환/반품택배비 정책을 확인 부탁드립니다
                              <br/>타 상품으로의 교환처리도 가능하며 이 경우 교환시 발생하는 차액에 관하여 부족한 차액은 택배비와 함께 동봉 또는 입금 부탁드리며
                              <br/>남는 차액의 경우 적립처리 가능하니 처리의사를 남겨주세요.</p>
                            <br/><p>스타일맨는 대한통운 택배를 통해서만 반품 접수를 하고 있으며, 대한통운이 아닌 타 택배를 이용하실 경우
                              <br/>추가되는 착불 요금은 모두 고객 부담이니 이점 참고하시어 꼭 선불로 보내주시기 바랍니다.
                              <br/>특히! 오배송, 불량인 경우에는 대한통운 택배만 이용하셔서 반송해 주시기 바랍니다.</p>
                            <br/><p>단순변심에 의한 교환, 반품은 고객님께서 왕복 택배비(5,000원) 전액을 부담해 주셔야 하며
                              <br/>오 배송 또는 불량일 경우 스타일맨에서 택배비를 부담하며 발송해 드립니다.
                              <br/><br/>단, 불량과 같은 경우 일부 고객님들께서 택배비에 부담을 덜기위해 고의적으로 상품 훼손, 오염 등으로
                              <br/>다른 사이즈, 색상을 선택하여 교환처리를 요청하는 경우가 있어
                              <br/>부득히 동일상품 색상, 사이즈로만 교환 요청해 주실 것을 당부 드립니다.</p>
                            <br/><p>(오배송, 불량배송인 경우에도 타 택배 이용시에는 대한통운 택배 착불 요금 2,500원 이상의 요금은 고객님께서
                              <br/>부담해주셔야 합니다.)</p>
                            <p>(배송료 동봉으로인한 분실시 당사는 책임이 없음을 알려드립니다.)</p>
                            <br/><br/><br/></td>
                        </tr></tbody></table><!-- 13 end --><!-- 14 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('14')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">14</font>[교환/반품 문의]</b>교환/반품이 불가능한 경우를 알고싶어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_14" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/><br/><br/>※소비자에게 책임 있는 사유로 재화가 멸실 또는 훼손된 경우 (다만, 재화의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)
                                    <br/>※소비자의 사용 또는 일부 소비에 의하여 재화의 가치가 현저히 감소한 경우
                                    <br/>※시간의 경과에 의하여 재판매가 곤란할 정도로 재화의 가치가 현저히 감소한 경우
                                    <br/>※복제가 가능한 재화등의 포장을 훼손한 경우
                                    <br/>※개별 주문 생산되는 재화 등 청약철회시 판매자에게 회복할 수 없는 피해가 예상되어
                                    <br/>별도로 그 사실을 고지하고 소비자의 사전 동의를 얻은 경우
                                    <br/></td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 14 end --><!-- 15 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('15')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">15</font>[교환/반품 문의]</b>주문한 제품이 아닌 다른 제품(불량)으로 왔어요</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_15" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>우선 수령하신 상품에 잘못된 배송으로 불편을 드리게 된 점 진심으로 사과드립니다.
                                    <br/>불량 또는 오배송상품 교환시 상품의 검품 및 확인을 위한 준비과정을 위하여 물품을 스타일맨쪽으로 먼저
                                    <br/>보내주셔야 원할한 처리가 가능하오니 양해 부탁드리며 대한통운택배(1588-1255)로 연략하여 착불 반송해 주시면 됩니다.
                                    <br/><br/>불량 또는 오배송 상품의 기존 구매하신 상품과의 정상교환일 경우 스타일맨에서 왕복배송비를 부담해드리며
                                    <br/>다른상품으로의 교환은 고객님의 교환의사가 일부 반영되어 재발송 배송료가 고객님의 부담이 되니 이점 양해 부탁드립니다.
                                    <br/><br/>불량 또는 오배송으로 확인이 되지 않는 상품의 경우에는 배송료가 부담될 수 있으니 유의하여 주시기 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 15 end --><!-- 16 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('16')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">16</font>[교환/반품 문의]</b>반품을 신청했는데 택배사가 아직 가져가지 않았어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_16" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>반품 신청하신 제품은 7일이내에 당사로 도착을해야 원할한 처리가 가능합니다.
                                    <br/>고객님께서 다시 한번 택배사로 연락하셔서 회수예약을 해주시기 바랍니다.
                                    <br/>회수 지연으로 인해서 기한내에 도착하지 못할것 같은 경우에는 상담센터나 1:1게시판을 이용해서 사유를 남겨주시기 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 16 end --><!-- 17 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('17')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">17</font>[교환/반품 문의]</b>카드,실시간계좌이체,휴대폰인증결제 환불은 어떻게 해야하나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_17" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <p>
                                    </p>
                                    <p>
                                      <br/>카드결제및 실시간계좌이체,휴대폰인증결제는 구매금액에 따라 변경되는 경우가 많이 발생됨에 따라
                                      <br/>상담센터나 1:1게시판을 이용해주시기 바랍니다.</p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <br/><p>
                                      <strong>현금결제경우</strong></p>
                                    <p>현금결제와 같은경우 환불원하시는 상품에대해선</p>
                                    <p>그 금액 그대로 환불을 해드립니다!!</p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <br/><p>
                                      <strong>휴대폰인증결제경우</strong></p>
                                    <p>
                                    </p>
                                    <p>휴대폰결제건에 대해서 상품을 구매후 환불요청하시면 당월건일경우</p>
                                    <p>승인취소가 지원이되지만 이월된경우엔 휴대폰결제수단 (주)다날 자체에서 지원이 되지 않기때문에</p>
                                    <p>이용에 다소 불편하실 수 있으니 이점 유의하여 결제해주시기 바랍니다.</p>
                                    <p>
                                    </p>
                                    <p>휴대폰결제경우 부분취소기능이 지원되지 않으므로</p>
                                    <p>부분취소요청시엔 수령하신 재화의 물품대금만큼만 따로 결제해주시면 전체취소 처리가 가능 합니다.</p>
                                    <p>
                                    </p>
                                    <p>
                                    </p><p>당월에 주문취소를 하는 경우 휴대폰 청구 금액에 부과예정이었던 금액은 취소가 가능합니다.</p>
                                    <p>단, 익월로 넘어가는 경우 이미 휴대폰 요금에 청구가 완료된 후 시점으로 휴대폰결제취소가 되지 않습니다.</p>
                                    <p>환불정책의 따라 예치금 적립 또는 휴대폰수수료(3.9%)를 제외하고 계좌 환불처리가 가능합니다.</p>
                                    <p>
                                    </p>
                                    <p>또한 휴대폰결제의 경우 부분취소자체가 불가하다보니 부분취소를 원하시는 경우</p>    
                                    <p>예치금 적립 또는 휴대폰수수료(3.9%)를 제외하고 계좌 환불처리가 가능합니다.</p>
                                    <p>
                                    </p>
                                    <p>단! 품절, 불량, 오배송의 경우 </p>
                                    <p>계좌 환불요청시 휴대폰 수수료 3.9% 제외 현금환불 진행 후에</p>    
                                    <p>예치금으로 해당 수수료는 다시 돌려드리겠습니다.</p>
                                     
                                    
                                    <br/><p>
                                      <strong>카드결제경우</strong></p>
                                    <p>기존에는 카드 결제를 해주셨을 경우</p>
                                    <p>되도록이면 실 구매 금액의 재입금 후</p>
                                    <p>전체 결제 금액을 취소하는 방법으로 부탁드렸는데요^^</p>
                                    <p>시스템 업그레이드로 카드 결제 부분취소가 가능하게 되었습니다
                                      <br/><br/>부분취소시 수수료 부담이 없으시지만 묶음 배송으로 인한</p>
                                    <p>택배비 환불은 수수료 부담으로 인하여</p>
                                    <p>되도록이면 적립금으로 양해를 구하고 있습니다^^
                                      <br/></p>
                                    <p>
                                    </p>
                                    <p>-위와 같은처리가 불가능하신분께선 카드사에서 스타일맨쪽으로 청구하는 3.5%의 수수료와</p>
                                    <p>부가세 10%, (소득세별도) 이상의 수수료를 부담하시는 경우가 생길수있으니</p>
                                    <p>꼭 참고하시어 주문결제해주시기 바랍니다!!</p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <br/><p>
                                      <strong>실시간계좌이체경우</strong></p>
                                    <p>실시간계좌이체에 대해서 결제후 취소요청을하시면 전체취소시 요청시 전체취소가 가능하며</p>
                                    <p>부분취소시 요청시 부분취소된 재화의 물품대금만큼만 따로 환불해드립니다.</p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                  </td>
                                </tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 17 end --><!-- 18 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('18')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">18</font>[교환/반품 문의]</b>교환 택배비는 어떻게 하나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_18" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>※단순 변심 색상, 사이즈 교환 왕복배송료 고객부담 5.000원
                                    <br/>※불량/오배송 상품 주문서와 동일한 정상품으로의 교환은 당사부담
                                    <br/>※불량/오배송 상품 주문서와 다른 사이즈/색상 교환시 고객 2500원부담
                                    <br/>※불량/오배송 상품과 정상적으로 받으신 상품을 함께 교환하시길 원하실 경우에는 무상 교환과 변심교환(5000원)을
                                    <br/>당사와 고객 반반부담으로 2500을 입금해주시면 됩니다.
                                    <br/><br/>※불량/오배송의 경우로 환불요청시 당사 부담
                                    <br/>불량, 오배송을 받은 경우에라도 대한통운이 아닌 타 택배로 보내신 경우 2500원이 초과하여 발생할경우 대한통운 택배가 아닌
                                    <br/>경우에 초과되는 부분은 고객 부담이니 꼭 대한통운 택배 착불로만 발송하시어 피해가 없으시도록 주의하시기 바랍니다.
                                    <br/><br/>(배송료 동봉으로인한 분실시 당사는 책임이 없음을 알려드립니다.)</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 18 end --><!-- 19 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('19')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">19</font>[교환/반품 문의]</b>반품 택배비는 어떻게 하나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_19" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>※5만원이상 구매했을때 구매상품 모두 반품시 5000원
                                    <br/>※반품하는 상품을 제외한 상품의 가격이(실제 구매금액) 5만원 미만일경우 5000원
                                    <br/>※반품하는 상품을 제외한 상품의 가격이(실제 구매금액) 5만원 이상일경우 2500원
                                    <br/>※불량/오배송 받은 상품과 단순 변심교환/반품 건을 묶음반품 할 경우 2500원
                                    <br/><br/>불량, 오배송을 받은 경우에라도 대한통운이 아닌 타 택배로 보내신 경우 2500원이 초과하여 발생할경우 대한통운 택배가 아닌
                                    <br/>경우에 초과되는 부분은 고객 부담이니 꼭 대한통운 택배 착불로만 발송하시어 피해가 없으시도록 주의하시기 바랍니다.
                                    <br/><br/>(배송료 동봉으로인한 분실시 당사는 책임이 없음을 알려드립니다.)</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 19 end --><!-- 20 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('20')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">20</font>[교환/반품 문의]</b>교환/반품 처리는 어느정도 기간이 소요되나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_20" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>택배사로 도착 후 스타일맨 본사로 이동되어 처리되는 시스템으로
                                    <b>택배사 도착 후 1-4일정도 소요</b>됩니다.
                                    <br/>일시적으로 교환&amp;반품 입고량이 많은 경우 다소간의 처리가 지연될 수 있으니 넉넉하게 시간을 감안하신후
                                    <br/>보내주시길 바랍니다.
                                    <br/><br/>교환상품도 새로운 주문 상품과 같이 교환승인, 완료 이후 새로운 주문과 같이 배송준비기간이 소요됩니다. 자세한 사항은
                                    <br/>FAQ&gt;배송문의를 참고 바랍니다.
                                    <br/>반품처리는 반품 승인 후 교환/반품 신청서에 환불정보가 정확히 기재된 경우 1~2일정도내에 환불이
                                    <br/>완료되지만, 환불 정보가 정확하지 않거나, 미기재 된 경우
                                    <br/>우선 예치금 처리 후 고객님께서 연락 주시면 요청건 대로 처리 진행 해드리고 있습니다.
                                    <br/>연락이 안될시 환불보류 상태로 고객의 연락을 기다리게 됩니다.
                                    <br/><br/>반품 발송일로 부터 환불완료가 4-5일 이내로 이뤄지지 않을 경우 고객센터로 문의바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 20 end --><!-- 21 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('21')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">21</font>[교환/반품 문의]</b>맞교환 하고 싶습니다.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_21" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>통상적으로 맞교환은 스타일맨물류센터로 반입되어 반품팀에서 검품확인이 되어야 시스템상 처리가 가능한 부분으로
                                    <br/>상품이 물류센터로 반입되지 않은채 먼저 발송은 불가능합니다.
                                    <br/>반품접수를 받은 기사님께서 고객님들의 상품을 미처 받아오지 못하는 경우도 많이 발생하여
                                    <br/>정상적으로 처리가 되지 않는 경우가 많습니다.
                                    <br/><br/>상품의 수령을 확인해야만 처리가 가능한 부분이니 이해부탁드립니다.
                                    <br/>오배송/불량건으로 인한 맞교환은 상담센터로 문의해주세요.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 21 end --><!-- 61 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('61')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">22</font>[적립금/예치금/쿠폰문의]</b>적립금과 예치금의 차이점을 알고싶어요</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_61" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/><b>적립금 안내</b>
                                    <br/>-주문으로 발생한 적립금은 배송완료 후 1~3일 전산 업데이트 기간 후 실제 사용가능한 적립금으로 전환됩니다.
                                    <br/>-배송완료 시점으로 1일 동안은 미가용 적립금으로 분류됩니다. -사용가능 적립금으로 전환되기까지 상품구매에 사용하실 수 없습니다
                                    <br/>그러므로 적립금은 사용가능 적립금으로 변환된 후 사용이 가능하며
                                    <br/>현금으로 환불은 불가능 합니다.
                                    <br/><br/><b>예치금 안내</b>
                                    <br/>-예치금은 주문취소 등의 결제대금 환불,초과 입금차액 환불 등으로 발생한 금액입니다.
                                    <br/>-예치금은 상품 구매 시 현금과 동일하게 언제든지 사용 가능합니다.
                                    <br/><br/></td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 61 end --><!-- 60 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('60')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">23</font>[적립금/예치금/쿠폰문의]</b>적립금과 예치금은 동시 사용이 가능한가요??</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_60" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>네. 적립금과 예치금은 동시에 사용이 가능하오며
                                    <br/>제품 주문시 주문서 작성페이지에서 사용하시면 됩니다.
                                    <br/></td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 60 end --><!-- 59 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('59')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">24</font>[적립금/예치금/쿠폰문의]</b>주문취소를 했는데 쿠폰이 사라졌어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_59" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문취소 시 사용하였던 쿠폰은 시스템상 자동으로 복구가 불가능 한점 양해부탁드리며,
                                    <br/>고객센터로 문의 주시면 재발급이 가능합니다.
                                    <br/></td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 59 end --><!-- 22 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('22')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">25</font>[적립금/예치금/쿠폰문의]</b>적립금/예치금 사용은 얼마부터 가능한가요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_22" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문금액이 최소 20,000원 이상일 경우 1원부터 전액 사용 가능합니다.
                                    <br/>주문서작성시 하단에 있는 결제정보란에서 사용가능 적립금을 확인 하실수있습니다.
                                    <br/><br/>예치금 사용 또한 예치/구매금액에 상관없이 사용이 가능하며
                                    <br/>주문서작성시 하단에 있는 결제정보란에서 사용가능 예치금을 확인 하실수있습니다.
                                    <br/><br/>미가용 적립금의 경우 반품, 구매취소 등을 대비한 실질적인 구입이 되지 않은 주문의 적립금입니다</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 22 end --><!-- 23 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('23')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">26</font>[적립금/예치금/쿠폰문의]</b>현금으로 환불할수는 있나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_23" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>적립금은 현금으로는 환불되지않으며 회원 탈퇴시 적립금은 자동적으로 소멸됩니다.
                                    <br/>다시 재가입을 하더라도 복구되지 않습니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 23 end --><!-- 24 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('24')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">27</font>[적립금/예치금/쿠폰문의]</b>회원활동을 많이 하는데 적립금이 들어오지 않아요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_24" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>구매/포토후기, 유머게시판,출석체크등 활동이 많으셔도 필수적으로 기입하셔야 할 사항과
                                    <br/>정해진 양식에 맞게 작성해주셔야 담당자가 판단하에 적립금이 지급되고 있습니다.
                                    <br/>일정 조건이 충족되었는데도 남겨주신 글들에 대한 적립금 지급이 장기간 지연이되면 상담센터나
                                    <br/>게시판으로 알려주시기 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 24 end --><!-- 66 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('66')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">28</font>[적립금/예치금/쿠폰문의]</b>쿠폰으로 구매 후 환불시 어떻게 환불 되는지 궁금합니다.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_66" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>쿠폰 적용 주문건은 환불 받으실 상품 제외 하고
                                    <br/>최종적으로 주문하신 금액이 쿠폰적용가능한 금액보다 낮을 경우.
                                    <br/>쿠폰 적용조건 미달되어 쿠폰 할인 되지 않아
                                    <br/>쿠폰 할인 받은 금액 만큼 차감 후 환불 가능합니다..</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 66 end --><!-- 25 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('25')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">29</font>[기타문의]</b>개인결제창이 궁금합니다.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_25" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>신용카드 결제시 부분취소가 불가능한 체크카드/선불카드/비씨카드의 경우 전체취소를 진행해 드리고 있습니다.
                                    <br/>전체 취소이전에 수령하실 상품 또는 수령하신 상품에 관하여 재결제 안내를 드리고 있습니다.
                                    <br/>사이트 검색창에서 성함으로 검색후 확인되는 개인결제창을 먼저 결제해주시면 해당하는 초기 주문건 신용카드 전체취소가 되며
                                    <br/>카드사에서 확인되는데까지는 7~10일 후 취소내역 확인 가능합니다.
                                    <br/><br/>개인결제는 장바구니에 담지마시고 반드시 단독결제를 하셔야합니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 25 end --><!-- 26 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('26')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">30</font>[기타문의]</b>카드 취소후 확인이 되질않습니다.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_26" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>취소처리가 완료 되었다고 하더라도 승인사와 카드사 간의 전산 처리 시간으로 인하여 7~10일 후에
                                    <br/>카드사 전산에서 확인이 가능합니다.
                                    <br/>단, 신용카드 결제일자에 맞추어 대금이 청구될 수 있으며 이 경우 익월 신용카드 대금청구시 카드사에서 환급처리됩니다.
                                    <br/>궁금하신 사항이나 이해되지 않는부분들은 카드사로 문의를 해주시기 바라며, 이에 대해서 궁금하신 점이 있으시면
                                    <br/>상담센터나 1:1게시판을 이용해서 문의 주시기 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 26 end --><!-- 27 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('27')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">31</font>[기타문의]</b>현금영수증은 어떻게 신청하나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_27" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>현금영수증은 주문하신후 취소,반품하는 경우가생길수 있으므로 배송완료 후에 구매확정이 되면 발행처리가
                                    <br/>가능하며 국세청 홈페이지를 통해 확인하실수있습니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 27 end --><!-- 58start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('58')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">32</font>[기타문의]</b>제품 a/s가 되는지 궁금합니다.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_58" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>
                                    저희 스타일맨에서는 A/S가 가능한 제품도있고 불가능한제품도 있으니 먼저
                                    <b>고객센터1599-6069</b>또는
                                    <b>게시판</b>을
                                    <br/>이용해서 문의주시기 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 58 end --></span>
                        
                  <span id="premier2" style="display: none; ">
                    <!-- 28 start -->
                    <table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('28')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">01</font>[입금문의]</b>입금확인이 되지않아요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_28" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>무통장입금시 입금확인은 자동입금시스템으로 매실시간 30분단위로 확인이 되고있습니다.
                                    <br/>주문자의 성함과 혹은 입금 예정자와 실제 입금자의 성함 그리고 주문금액이 일치해야만 자동전산처리가 이루어집니다.
                                    <br/>(카드 결제나 실시간 계좌이체의 경우 자동적으로 입금 확인이 되다보니
                                    <br/>입금확인 문자가 따로 발송되지 않습니다, 주문완료문자가 발송되었다면 입금 확인이 된 것입니다.)
                                    <br/>CD기의경우 잔금 입금이 어려워 초과입금하시는경우 주문서입금 금액과틀려 입금확인이 되지않습니다.
                                    <br/><br/>이럴경우 반드시 저희스타일맨 상담센터나 게시판으로 연락을주셔야 정상적인 입금확인을하실수있습니다.</td></tr></tbody></table><br/><br/><table border="0" width="100%"><tbody><tr><td>A,</td>
                                  <td align="center">주문자명</td>
                                  <td align="center">주문완료금액</td>
                                  <td align="center">입금자명</td>
                                  <td align="center">실제입금자</td>
                                  <td align="center">실제입금금액</td>
                                  <td align="center">입금확인</td></tr><tr><td></td>
                                  <td align="center">홍길동</td>
                                  <td align="center">29500원</td>
                                  <td align="center">홍길동</td>
                                  <td align="center">홍길동</td>
                                  <td align="center">29500원</td>
                                  <td align="center">O (자동입금확인됨)</td></tr><tr><td></td>
                                  <td align="center">홍길동</td>
                                  <td align="center">29500원</td>
                                  <td align="center">홍길동</td>
                                  <td align="center">김삿갓</td>
                                  <td align="center">29500원</td>
                                  <td align="center">X (자동입금확인안됨)</td></tr><tr><td></td>
                                  <td align="center">홍길동</td>
                                  <td align="center">29500원</td>
                                  <td align="center">김삿갓</td>
                                  <td align="center">김삿갓</td>
                                  <td align="center">29500원</td>
                                  <td align="center">O (자동입금확인됨)</td></tr><tr><td></td>
                                  <td align="center">홍길동</td>
                                  <td align="center">29500원</td>
                                  <td align="center">홍길동</td>
                                  <td align="center">홍길동</td>
                                  <td align="center">30000원</td>
                                  <td align="center">X (자동입금확인안됨)</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 28 end --><!-- 29 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('29')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">02</font>[입금문의]</b>입금을했는데 주문서가 사라졌어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_29" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>정해진 입금일자안으로 입금완료 처리가 되지 않는 경우 주문서는 자동으로 취소되오니 이 점 꼭 유의해 주세요.(주문서7일간유지)
                                    <br/>이럴 경우 입금만 확인이 되어 상품준비가 이루어지지 않습니다, 우선 상담센터및 게시판으로 문의하시어 상황을 알리신후
                                    <br/>주문서를 다시 작성해주시길 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 29 end --></span>
                  <span id="premier3" style="display: none; ">
                    <!-- 30 start -->
                    <table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('30')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">01</font>[배송문의]</b>배송기간을 알고싶어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_30" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문후 입금확인이 완료된 시점부터 상품준비에 들어가며 금일 들어온 주문은 다음날 자정을 기준으로 발송준비가 시작됩니다.
                                    <br/>판매되고 있는 상품은 크게 상시 구비상품과 주문후 입고상품으로 나눌수 있는데요
                                    <br/>주문후 상시 구비상품은 당일발송도 가능하며 입고상품의 경우 일반의류의 경우 3~4일(공휴일 및 주말 토,일제외),
                                    <br/>신발 또는 가죽세공 상품의 경우 5~7일(공휴일 및 주말 토,일제외) 소요될수 있으니 이점 이해해주시길 바랍니다.
                                    <br/><br/>주문폭주상품과 수입상품의 경우 생산 및 세관 통관의 시간이 소요되어
                                    <br/>다소간의 지연이 발생할수 있으니 양해 부탁드립니다.
                                    <br/><br/>지연되는상품은 주문후 3일후에 자동적으로 배송지연 문자발송되고있습니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 30 end --><!-- 31 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('31')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">02</font>[배송문의]</b>배송중으로 확인되는데 운송장 정보조회가 되지않아요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_31" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문하신 상품은 배송업무와 동시에 전산처리되어 배송처리가 이뤄지며
                                    <br/>운송장 전산처리후에 배송중 단계로 확인이 가능합니다.
                                    <br/>배송중으로 확인되더라도 스타일맨물류센터에서 출고한시점이 아닌것으로
                                    <br/>대한통운물류센터로 이동후 배송정보를 입력한 시점부터 배송추적이 가능하게됩니다.
                                    <br/><br/>배송중으로 문자를 받아보신 고객님들은 여유있게 오후 8시이후로 배송추적을 해주시면됩니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 31 end --><!-- 32 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('32')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">03</font>[배송문의]</b>부분배송으로 문자를받았어요. 어떻게 확인하나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_32" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>상품에 따라 제작사 제작기간 입고되는 일자가 차이가 있으므로
                                    <br/>가급적 먼저 준비되어 보내드릴 수 있는 상품이 선발송되는 시스템입니다.
                                    <br/>이때 분리되어 발송되더라도 배송료는 모두 스타일맨에서 부담하여 보내드리며
                                    <br/>선발송된 상품확인은 로그인 후 마이페이지 주문내역에서 확인가능합니다.
                                    <br/><br/>만일 조회가 명확히 되지 않으실경우 상담센터나 관련 게시판으로 문의글 남겨주시면 신속히 안내 도와드리겠습니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 32 end --><!-- 33 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('33')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">04</font>[배송문의]</b>배송완료로 확인되나 물건을 못받았어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_33" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>배송이 완료된 주문상품은 스타일맨에서 출고후 지정 택배사에 이동경유중인 상품으로
                                    <br/>정확한 위치 확인을 하고자 하실때는 출고당시의 운송장 번호를 파악,(마이페이지에서 확인가능)
                                    <br/>대한통운상담센터(1588-1255)으로 문의해주시면 더욱 정확하고 신속하게 알수있습니다.
                                    <br/><br/>만약 대한통운택배측과 연락이 어렵거나 처리가 지연될 경우 스타일맨 상담센터나 게시판으로 문의주시면
                                    <br/>신속히 처리후 안내 도와드리도록 하겠습니다.
                                    <br/><br/>운송장 정보를 조회하면 해당지역 대한통운연락처 열람이 가능하니 기사님 연락처 문의후
                                    <br/>기사님과 협의사항또는 위치확인시 참고해주시길 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 33 end --><!-- 34 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('34')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">05</font>[배송문의]</b>배송완료로 확인되나 운송장 정보조회가 되지않아요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_34" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>일시적으로 배송량이 증가하게되면 심야시간까지 배송업무가 이루어집니다.
                                    <br/>이런경우 택배사의 픽업시간에 대한 제약으로 인해 당일 스타일맨에서는 배송업무가 되더라도 택배사측으로 물건이
                                    <br/>발송되지 않을수있는데요, 통상 다음날 오전에 일괄배송되니 이점 참고해주세요.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 34 end --><!-- 35 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('35')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">06</font>[배송문의]</b>주문하신 상품의 품절안내를 받았어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_35" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문하신 상품을 배송해 드리지 못해 죄송합니다.
                                    <br/>품절건의 경우 주문후 입고 제품의 특성상 품절 확인이 미처 늦게 이루어지는점 양해 부탁드립니다.
                                    <br/>품절된 상품에 관하여 타상품으로의 변경 또는 적립금예치나 환불 원하시는 처리의사를 상담센터나
                                    <br/>게시판으로 알려주세요.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 35 end --><!-- 36 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('36')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">07</font>[배송문의]</b>따로따로 주문했는데, 묶음배송이 가능한가요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_36" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>여러가지 상품을 함께 장바구니를 이용하여 구매 원하는 상품을
                                    <br/>동일자 동시간에 결제 확인된 주문건은 자동으로 묶음처리가 되고 있습니다.
                                    <br/>발송되지 않은 다른일자나 같은일자 주문건(교환건포함)과 신규 주문건의 묶음일 경우 따로 연락을 주시지않으면
                                    <br/>묶음배송이 이루어지지 않을수도있으며 이럴 경우에는 배송료를 부담해주셔야합니다.
                                    <br/><br/>주문 번호가 서로 달라 함께 받아보길 원할 경우 주문을 하시고 상담센터나 게시판을 이용해 알려주셔야하며
                                    <br/>임의적으로 배송료를 제외하고 입금하신경우 입금확인이 불가능해 배송지연이 될수있습니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 36 end --><!-- 37 start --><!-- table border="0" width="100%">
                      <tbody>
                        <tr>
                          <td height="25" onclick="menu('37')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">08</font>[배송문의]</b>해외배송도 가능한가요?</td></tr>
                        <tr>
                          <td height="1" bgcolor="d9d9d9"></td>
                        </tr>
                        <tr id="submenu_37" style="DISPLAY: none;">
                          <td align="center">
                            <table border="0" width="100%">
                              <tbody>
                                <tr>
                                  <td>
                                    <br/>현재 거의 모든 지역으로 해외배송을 해 드리고 있습니다.
                                    <br/>해외배송을 원하실 경우 주문하실 때 수령하실 주소, 수취인, 연락처를 정확하게
                                    <br/>남겨주셔야 하구요. 해외배송인 경우 전화연결이 불가능 하기 때문에
                                    <br/>연락 가능하신 이메일 주소도 꼭 남겨주세요. 해외주소지는 배송 메시지에 기재
                                    <br/>해 주시면 됩니다. (해외주소는 국내 배송기재란에 기입이 불가능합니다.)
                                    <br/>주문건 입금은 국내카드,무통장입금으로만 가능합니다.
                                    <br/>
                                    <br/>주문건 입금 확인이 되신 후 배송비용을 측정해 이메일로 안내해 드리구요
                                    <br/>게시판을 이용해서 문의주시면 배송비용에 대한 확인사항을 알려드립니다.
                                    <br/>배송비 입금확인 후 우체국 EMS 택배로 발송이 됩니다.
                                    <br/>
                                    <br/>해외배송인 경우 배송료 입금은 국내카드,무통장 입금으로만 입금처리가 가능합니다.
                                    <br/>(해외카드 사용불가) 배송료 입금여부에 대해 꼭 게시판에 글 남겨주세요.</td></tr>
                              </tbody>
                            </table>
                            <br/>
                            <br/>
                            <br/></td>
                        </tr>
                      </tbody>
                    </table --><!-- 37 end --><!-- 38 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('38')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">08</font>[배송문의]</b>당일배송 상품을 시켰는데 오질않네요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_38" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>당일배송이 시행되는 제품은 재고가 구비되어 당일배송을 원칙으로 하고있으나 고객님들의 사랑에 힘입어
                                    <br/>구비되어있는 수량이 일시소진된후 재생산에 들어가 부득이 당일배송이 시행되지 않을 수 있습니다.
                                    <br/>물론 이런경우 사이트 내에서 알림 또는 문구 수정이 이루어지나 한번에 많은 일을
                                    <br/>정해진 시간내에 처리해야 하는 업무 특성상 다소간의 대처가 늦어질수 있으니
                                    <br/>고객님들의 따뜻한 이해와 격려를 부탁드립니다.
                                    <br/><br/>당일배송 상품과 일반배송 상품을 함께 주문주실경우 당일배송이 유효하지 않게 되어
                                    <br/>일반배송의 기준으로 처리되니 이 점 꼭 유의해주세요.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 38 end --></span>
                  <span id="premier4" style="display: none; ">
                    <!-- 39 start -->
                    <table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('39')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">01</font>[배송전 변경/취소 문의]</b>배송되지 않았다면 상품변경 상품색상 및 사이즈, 주소를 변경하고 싶어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_39" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>변경 요청하는 상품의 경우 배송이 되지 않은 경우에만 변경이 가능합니다.
                                    <br/>변경을 원하는 제품의 정확한 판매명과 옵션값(색상&amp;사이즈)을 상담센터나 1:1게시판으로 알려주세요.
                                    <br/>주문상태는 배송준비중으로 이미 포장이 되어 택배사로 넘어간경우 발송전 변경이 불가능하며
                                    <br/>발송후 일반 교환건으로 접수를 하셔야 처리됩니다.
                                    <br/><br/>발송전 상품에 일부 변경사항이 발생되면 상품을 새로 준비하는 기간이 필요하며 다소 발송이 더 지연될 수 있으니
                                    <br/>이점 양해부탁드립니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 39 end --><!-- 40 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('40')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">02</font>[배송전 변경/취소 문의]</b>아직 배송되지 않았다면 취소를하고싶어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_40" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문서작성 후 입금을 하지않으셨다면 마이페이지에서 고객님이 직접 주문취소가 가능합니다.
                                    <br/><br/>입금후 취소를 원하는 제품은 정확한 판매명과 옵션값(색상&amp;사이즈)을 상담센터나 1:1게시판으로 알려주세요.
                                    <br/>계좌입금 주문서는 환불계좌를 남겨주셔야 빠른 환불처리가 가능하며 카드결제는 부분취소 처리가 가능합니다.
                                    <br/><br/>휴대폰 결제 주문건의 경우엔 부분취소가 불가하여 실구매 만큼 재결제 해주셔야 처음 주문건의 취소가 가능하니
                                    <br/>재결제에 관하여 상담센터나 취소 문의 게시판으로 꼭 문의 주시길 바랍니다.
                                    <br/><br/>주문상태가 "배송준비중" 으로 확인 되더라도 실시간으로 배송이 처리되고 있어 이미 발송완료된 경우가 있을 수 있습니다.
                                    <br/>하루 전 날 취소 접수 해주신 문의건에 대해서만 안전하게 취소 가능하니 참고 부탁드립니다.
                                    <br/><br/>이미 출고가 된 상태라면 수령후에 일반 반품건으로 접수를 하셔야 처리되니 이점 유의해주세요.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 40 end --></span>
                  <span id="premier5" style="display: none; ">
                    <!-- 41 start -->
                    <table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('41')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">01</font>[교환/반품 문의]</b>교환/반품을 하고싶어요</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_41" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/><br/><p>수령하신 상품을 교환 또는 반품을 원하실 경우 대한통운택배(1588-1255)로 접수하여 착불반송하여 보내주시면 됩니다.
                                      <br/><br/>교환/반품/적립은 반품요청서를 작성하여 수령하신날로부터 7일이내 접수해주시고 최대한 빠른시일내에 보내주시기 바랍니다.
                                      <br/><br/><strong>
                                        <font color="#990000">또한 구매하신 상품의 바코드 택을 꼭 같이 보내주세요</font></strong>
                                      <br/><br/>반품 택배비의 경우 상황에 따라 금액이 틀리니 교환/반품택배비 정책을 확인 부탁드립니다
                                      <br/>타 상품으로의 교환처리도 가능하며 이 경우 교환시 발생하는 차액에 관하여 부족한 차액은 택배비와 함께 동봉 또는 입금 부탁드리며
                                      <br/>남는 차액의 경우 적립처리 가능하니 처리의사를 남겨주세요.</p>
                                    <br/><p>스타일맨는 대한통운 택배를 통해서만 반품 접수를 하고 있으며, 대한통운이 아닌 타 택배를 이용하실 경우
                                      <br/>추가되는 착불 요금은 모두 고객 부담이니 이점 참고하시어 꼭 선불로 보내주시기 바랍니다.
                                      <br/>특히! 오배송, 불량인 경우에는 대한통운 택배만 이용하셔서 반송해 주시기 바랍니다.</p>
                                    <br/><p>단순변심에 의한 교환, 반품은 고객님께서 왕복 택배비(5,000원) 전액을 부담해 주셔야 하며
                                      <br/>오 배송 또는 불량일 경우 스타일맨에서 택배비를 부담하며 발송해 드립니다.
                                      <br/><br/>단, 불량과 같은 경우 일부 고객님들께서 택배비에 부담을 덜기위해 고의적으로 상품 훼손, 오염 등으로
                                      <br/>다른 사이즈, 색상을 선택하여 교환처리를 요청하는 경우가 있어
                                      <br/>부득히 동일상품 색상, 사이즈로만 교환 요청해 주실 것을 당부 드립니다.</p>
                                    <br/><p>(오배송, 불량배송인 경우에도 타 택배 이용시에는 대한통운 택배 착불 요금 2,500원 이상의 요금은 고객님께서
                                      <br/>부담해주셔야 합니다.)</p>
                                    <p>(배송료 동봉으로인한 분실시 당사는 책임이 없음을 알려드립니다.)</p>
                                    <br/><br/><br/></td>
                                </tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 41 end --><!-- 42 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('42')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">02</font>[교환/반품 문의]</b>교환/반품이 불가능한 경우를 알고싶어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_42" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/><br/><br/>※소비자에게 책임 있는 사유로 재화가 멸실 또는 훼손된 경우 (다만, 재화의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)
                                    <br/>※소비자의 사용 또는 일부 소비에 의하여 재화의 가치가 현저히 감소한 경우
                                    <br/>※시간의 경과에 의하여 재판매가 곤란할 정도로 재화의 가치가 현저히 감소한 경우
                                    <br/>※복제가 가능한 재화등의 포장을 훼손한 경우
                                    <br/>※개별 주문 생산되는 재화 등 청약철회시 판매자에게 회복할 수 없는 피해가 예상되어
                                    <br/>별도로 그 사실을 고지하고 소비자의 사전 동의를 얻은 경우
                                    <br/></td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 42 end --><!-- 43 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('43')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">03</font>[교환/반품 문의]</b>주문한 제품이 아닌 다른 제품(불량)으로 왔어요</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_43" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>우선 수령하신 상품에 잘못된 배송으로 불편을 드리게 된 점 진심으로 사과드립니다.
                                    <br/>불량 또는 오배송상품 교환시 상품의 검품 및 확인을 위한 준비과정을 위하여 물품을 스타일맨쪽으로 먼저
                                    <br/>보내주셔야 원할한 처리가 가능하오니 양해 부탁드리며 대한통운택배(1588-1255)로 연략하여 착불 반송해 주시면 됩니다.
                                    <br/><br/>불량 또는 오배송 상품의 기존 구매하신 상품과의 정상교환일 경우 스타일맨에서 왕복배송비를 부담해드리며
                                    <br/>다른상품으로의 교환은 고객님의 교환의사가 일부 반영되어 재발송 배송료가 고객님의 부담이 되니 이점 양해 부탁드립니다.
                                    <br/><br/>불량 또는 오배송으로 확인이 되지 않는 상품의 경우에는 배송료가 부담될 수 있으니 유의하여 주시기 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 43 end --><!-- 44 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('44')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">04</font>[교환/반품 문의]</b>반품을 신청했는데 택배사가 아직 가져가지 않았어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_44" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>반품 신청하신 제품은 7일이내에 당사로 도착을해야 원할한 처리가 가능합니다.
                                    <br/>고객님께서 다시 한번 택배사로 연락하셔서 회수예약을 해주시기 바랍니다.
                                    <br/>회수 지연으로 인해서 기한내에 도착하지 못할것 같은 경우에는 상담센터나 1:1게시판을 이용해서 사유를 남겨주시기 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 44 end --><!-- 45 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('45')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">05</font>[교환/반품 문의]</b>카드,실시간계좌이체,휴대폰인증결제 환불은 어떻게 해야하나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_45" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <p>
                                    </p>
                                    <p>
                                      <br/>카드결제및 실시간계좌이체,휴대폰인증결제는 구매금액에 따라 변경되는 경우가 많이 발생됨에 따라
                                      <br/>상담센터나 1:1게시판을 이용해주시기 바랍니다.</p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <br/><p>
                                      <strong>현금결제경우</strong></p>
                                    <p>현금결제와 같은경우 환불원하시는 상품에대해선</p>
                                    <p>그 금액 그대로 환불을 해드립니다!!</p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <br/><p>
                                      <strong>휴대폰인증결제경우</strong></p>
                                    <p>
                                    </p>
                                    <p>휴대폰결제건에 대해서 상품을 구매후 환불요청하시면 당월건일경우</p>
                                    <p>승인취소가 지원이되지만 이월된경우엔 휴대폰결제수단 (주)다날 자체에서 지원이 되지 않기때문에</p>
                                    <p>이용에 다소 불편하실 수 있으니 이점 유의하여 결제해주시기 바랍니다.</p>
                                    <p>
                                    </p>
                                    <p>휴대폰결제경우 부분취소기능이 지원되지 않으므로</p>
                                    <p>부분취소요청시엔 수령하신 재화의 물품대금만큼만 따로 결제해주시면 전체취소 처리가 가능 합니다.</p>
                                    <p>  
                                    </p>
                                    <br/><p>휴대폰 취소</p>
                                    <p>당월에 주문취소를 하는 경우 휴대폰 청구 금액에 부과예정이었던 금액은 취소가 가능합니다.</p>
                                    <p>단, 익월로 넘어가는 경우 이미 휴대폰 요금에 청구가 완료된 후 시점으로 휴대폰결제취소가 되지 않습니다.</p>
                                    <p>환불정책의 따라 예치금 적립 또는 휴대폰수수료(3.9%)를 제외하고 계좌 환불처리가 가능합니다.</p>
                                    <p>  
                                    </p>  
                                    <p>또한 휴대폰결제의 경우 부분취소자체가 불가하다보니 부분취소를 원하시는 경우</p> 
                                    <p>예치금 적립 또는 휴대폰수수료(3.9%)를 제외하고 계좌 환불처리가 가능합니다.</p>
                                    <p>  
                                    </p>  
                                    <p>단! 품절, 불량, 오배송의 경우</p>
                                    <p>계좌 환불요청시 휴대폰 수수료 3.9% 제외 현금환불 진행 후에</p>
                                    <p>예치금으로 해당 수수료는 다시 돌려드리겠습니다.</p>  
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <br/><p>
                                      <strong>카드결제경우</strong></p>
                                    <p>기존에는 카드 결제를 해주셨을 경우</p>
                                    <p>되도록이면 실 구매 금액의 재입금 후</p>
                                    <p>전체 결제 금액을 취소하는 방법으로 부탁드렸는데요^^</p>
                                    <p>시스템 업그레이드로 카드 결제 부분취소가 가능하게 되었습니다
                                      <br/><br/>부분취소시 수수료 부담이 없으시지만 묶음 배송으로 인한</p>
                                    <p>택배비 환불은 수수료 부담으로 인하여</p>
                                    <p>되도록이면 적립금으로 양해를 구하고 있습니다^^
                                      <br/></p>
                                    <p>
                                    </p>
                                    <p>-위와 같은처리가 불가능하신분께선 카드사에서 스타일맨쪽으로 청구하는 3.5%의 수수료와</p>
                                    <p>부가세 10%, (소득세별도) 이상의 수수료를 부담하시는 경우가 생길수있으니</p>
                                    <p>꼭 참고하시어 주문결제해주시기 바랍니다!!</p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                    <br/><p>
                                      <strong>실시간계좌이체경우</strong></p>
                                    <p>실시간계좌이체에 대해서 결제후 취소요청을하시면 전체취소시 요청시 전체취소가 가능하며</p>
                                    <p>부분취소시 요청시 부분취소된 재화의 물품대금만큼만 따로 환불해드립니다.</p>
                                    <p>
                                    </p>
                                    <p>
                                    </p>
                                  </td>
                                </tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 45 end --><!-- 46 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('46')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">06</font>[교환/반품 문의]</b>교환 택배비는 어떻게 하나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_46" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>※단순 변심 색상, 사이즈 교환 왕복배송료 고객부담 5.000원
                                    <br/>※불량/오배송 상품 주문서와 동일한 정상품으로의 교환은 당사부담
                                    <br/>※불량/오배송 상품 주문서와 다른 사이즈/색상 교환시 고객 2500원부담
                                    <br/>※불량/오배송 상품과 정상적으로 받으신 상품을 함께 교환하시길 원하실 경우에는 무상 교환과 변심교환(5000원)을
                                    <br/>당사와 고객 반반부담으로 2500을 입금해주시면 됩니다.
                                    <br/><br/>※불량/오배송의 경우로 환불요청시 당사 부담
                                    <br/>불량, 오배송을 받은 경우에라도 대한통운이 아닌 타 택배로 보내신 경우 2500원이 초과하여 발생할경우 대한통운 택배가 아닌
                                    <br/>경우에 초과되는 부분은 고객 부담이니 꼭 대한통운 택배 착불로만 발송하시어 피해가 없으시도록 주의하시기 바랍니다.
                                    <br/><br/>(배송료 동봉으로인한 분실시 당사는 책임이 없음을 알려드립니다.)</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 46 end --><!-- 47 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('47')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">07</font>[교환/반품 문의]</b>반품 택배비는 어떻게 하나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_47" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>※5만원이상 구매했을때 구매상품 모두 반품시 5000원
                                    <br/>※반품하는 상품을 제외한 상품의 가격이(실제 구매금액) 5만원 미만일경우 5000원
                                    <br/>※반품하는 상품을 제외한 상품의 가격이(실제 구매금액) 5만원 이상일경우 2500원
                                    <br/>※불량/오배송 받은 상품과 단순 변심교환/반품 건을 묶음반품 할 경우 2500원
                                    <br/><br/>불량, 오배송을 받은 경우에라도 대한통운이 아닌 타 택배로 보내신 경우 2500원이 초과하여 발생할경우 대한통운 택배가 아닌
                                    <br/>경우에 초과되는 부분은 고객 부담이니 꼭 대한통운 택배 착불로만 발송하시어 피해가 없으시도록 주의하시기 바랍니다.
                                    <br/><br/>(배송료 동봉으로인한 분실시 당사는 책임이 없음을 알려드립니다.)</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 47 end --><!-- 48 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('48')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">08</font>[교환/반품 문의]</b>교환/반품 처리는 어느정도 기간이 소요되나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_48" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>택배사로 도착 후 스타일맨 본사로 이동되어 처리되는 시스템으로
                                    <b>택배사 도착 후 3-4일정도 소요</b>됩니다.
                                    <br/>일시적으로 교환&amp;반품 입고량이 많은 경우 다소간의 처리가 지연될 수 있으니 넉넉하게 시간을 감안하신후
                                    <br/>보내주시길 바랍니다.
                                    <br/><br/>교환상품도 새로운 주문 상품과 같이 교환승인, 완료 이후 새로운 주문과 같이 배송준비기간이 소요됩니다. 자세한 사항은
                                    <br/>FAQ&gt;배송문의를 참고 바랍니다.
                                    <br/>반품처리는 반품 승인 후 교환/반품 신청서에 환불정보가 정확히 기재된 경우 1~2일정도내에 환불이
                                    <br/>완료되지만, 환불 정보가 정확하지 않거나, 미기재 된 경우
                                    <br/>우선 예치금 처리 후 고객님께서 연락 주시면 요청건 대로 처리 진행 해드리고 있습니다.
                                    <br/>연락이 안될시 환불보류 상태로 고객의 연락을 기다리게 됩니다.
                                    <br/><br/>반품 발송일로 부터 환불완료가 4-5일 이내로 이뤄지지 않을 경우 고객센터로 문의바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 48 end --><!-- 49 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('49')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">09</font>[교환/반품 문의]</b>맞교환 하고 싶습니다.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_49" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>통상적으로 맞교환은 스타일맨물류센터로 반입되어 반품팀에서 검품확인이 되어야 시스템상 처리가 가능한 부분으로
                                    <br/>상품이 물류센터로 반입되지 않은채 먼저 발송은 불가능합니다.
                                    <br/>반품접수를 받은 기사님께서 고객님들의 상품을 미처 받아오지 못하는 경우도 많이 발생하여
                                    <br/>정상적으로 처리가 되지 않는 경우가 많습니다.
                                    <br/><br/>상품의 수령을 확인해야만 처리가 가능한 부분이니 이해부탁드립니다.
                                    <br/>오배송/불량건으로 인한 맞교환은 상담센터로 문의해주세요.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 49 end --></span>
                  <span id="premier6" style="display: none; ">
                    <!-- 62 start -->
                    <table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('62')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">01</font>[적립금/예치금/쿠폰문의]</b>적립금과 예치금의 차이점을 알고싶어요</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_62" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/><b>적립금 안내</b>
                                    <br/>-주문으로 발생한 적립금은 배송완료 후 1~3일 전산 업데이트 기간 후 실제 사용가능한 적립금으로 전환됩니다.
                                    <br/>-배송완료 시점으로 1일 동안은 미가용 적립금으로 분류됩니다. -사용가능 적립금으로 전환되기까지 상품구매에 사용하실 수 없습니다
                                    <br/>그러므로 적립금은 사용가능 적립금으로 변환된 후 사용이 가능하며
                                    <br/>현금으로 환불은 불가능 합니다.
                                    <br/><br/><b>예치금 안내</b>
                                    <br/>-예치금은 주문취소 등의 결제대금 환불,초과 입금차액 환불 등으로 발생한 금액입니다.
                                    <br/>-예치금은 상품 구매 시 현금과 동일하게 언제든지 사용 가능합니다.
                                    <br/><br/></td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 62 end --><!-- 63 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('63')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">02</font>[적립금/예치금/쿠폰문의]</b>적립금과 예치금은 동시 사용이 가능한가요??</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_63" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>네. 적립금과 예치금은 동시에 사용이 가능하오며
                                    <br/>제품 주문시 주문서 작성페이지에서 사용하시면 됩니다.
                                    <br/></td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 63 end --><!-- 64 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('64')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">03</font>[적립금/예치금/쿠폰문의]</b>주문취소를 했는데 쿠폰이 사라졌어요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_64" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문취소 시 사용하였던 쿠폰은 시스템상 자동으로 복구가 불가능 한점 양해부탁드리며,
                                    <br/>고객센터로 문의 주시면 재발급이 가능합니다.
                                    <br/></td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 64 end --><!-- 50 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('50')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">04</font>[적립금/예치금/쿠폰문의]</b>적립금/예치금 사용은 얼마부터 가능한가요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_50" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>주문 금액이 최소 20,000원 이상인 경우 보유한 적립금액에 상관없이 사용 가능합니다.
                                    <br/>주문서작성시 하단에 있는 결제정보란에서 사용가능 적립금을 확인 하실수있습니다.
                                    <br/><br/>예치금 사용 또한 예치/구매금액에 상관없이 사용이 가능하며
                                    <br/>주문서작성시 하단에 있는 결제정보란에서 사용가능 예치금을 확인 하실수있습니다.
                                    <br/><br/>미가용 적립금의 경우 반품, 구매취소 등을 대비한 실질적인 구입이 되지 않은 주문의 적립금입니다</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 50 end --><!-- 51 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('51')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">05</font>[적립금/예치금/쿠폰문의]</b>현금으로 환불할수는 있나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_51" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>적립금은 현금으로는 환불되지않으며 회원 탈퇴시 적립금은 자동적으로 소멸됩니다.
                                    <br/>다시 재가입을 하더라도 복구되지 않습니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 51 end --><!-- 52 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('52')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">06</font>[적립금/예치금/쿠폰문의]</b>회원활동을 많이 하는데 적립금이 들어오지 않아요.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_52" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>구매/포토후기, 유머게시판,출석체크등 활동이 많으셔도 필수적으로 기입하셔야 할 사항과
                                    <br/>정해진 양식에 맞게 작성해주셔야 담당자가 판단하에 적립금이 지급되고 있습니다.
                                    <br/>일정 조건이 충족되었는데도 남겨주신 글들에 대한 적립금 지급이 장기간 지연이되면 상담센터나
                                    <br/>게시판으로 알려주시기 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 52 end --><!-- 66 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('67')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">07</font>[적립금/예치금/쿠폰문의]</b>쿠폰으로 구매 후 환불시 어떻게 환불 되는지 궁금합니다.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_67" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>쿠폰 적용 주문건은 환불 받으실 상품 제외 하고
                                    <br/>최종적으로 주문하신 금액이 쿠폰적용가능한 금액보다 낮을 경우.
                                    <br/>쿠폰 적용조건 미달되어 쿠폰 할인 되지 않아
                                    <br/>쿠폰 할인 받은 금액 만큼 차감 후 환불 가능합니다..</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 66 end --></span>
                  <span id="premier7" style="display: none; ">
                    <!-- 53 start -->
                    <table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('53')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">01</font>[기타문의]</b>개인결제창이 궁금합니다.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_53" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>신용카드 결제시 부분취소가 불가능한 체크카드/선불카드/비씨카드의 경우 전체취소를 진행해 드리고 있습니다.
                                    <br/>전체 취소이전에 수령하실 상품 또는 수령하신 상품에 관하여 재결제 안내를 드리고 있습니다.
                                    <br/>사이트 검색창에서 성함으로 검색후 확인되는 개인결제창을 먼저 결제해주시면 해당하는 초기 주문건 신용카드 전체취소가 되며
                                    <br/>카드사에서 확인되는데까지는 7~10일 후 취소내역 확인 가능합니다.
                                    <br/><br/>개인결제는 장바구니에 담지마시고 반드시 단독결제를 하셔야합니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 53 end --><!-- 54 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('54')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">02</font>[기타문의]</b>카드 취소후 확인이 되질않습니다.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_54" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>취소처리가 완료 되었다고 하더라도 승인사와 카드사 간의 전산 처리 시간으로 인하여 7~10일 후에
                                    <br/>카드사 전산에서 확인이 가능합니다.
                                    <br/>단, 신용카드 결제일자에 맞추어 대금이 청구될 수 있으며 이 경우 익월 신용카드 대금청구시 카드사에서 환급처리됩니다.
                                    <br/>궁금하신 사항이나 이해되지 않는부분들은 카드사로 문의를 해주시기 바라며, 이에 대해서 궁금하신 점이 있으시면
                                    <br/>상담센터나 1:1게시판을 이용해서 문의 주시기 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 54 end --><!-- 55 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('55')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">03</font>[기타문의]</b>현금영수증은 어떻게 신청하나요?</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_55" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>현금영수증은 주문하신후 취소,반품하는 경우가생길수 있으므로 배송완료 후에 구매확정이 되면 발행처리가
                                    <br/>가능하며 국세청 홈페이지를 통해 확인하실수있습니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 55 end --><!-- 56 start --><table border="0" width="100%"><tbody><tr><td height="25" onclick="menu('56')" style="cursor:pointer; line-height:35px;">
                            <b>
                              <font color="#d0a560">04</font>[기타문의]</b>제품 a/s가 되는지 궁금합니다.</td></tr><tr><td height="1" bgcolor="d9d9d9"></td>
                        </tr><tr id="submenu_56" style="DISPLAY: none;"><td align="center">
                            <table border="0" width="100%"><tbody><tr><td>
                                    <br/>저희 스타일맨에서는 A/S가 가능한 제품도있고 불가능한제품도 있으니 먼저
                                    <b>고객센터1599-6069</b>또는
                                    <b>게시판</b>을
                                    <br/>이용해서 문의주시기 바랍니다.</td></tr></tbody></table><br/><br/><br/></td>
                        </tr></tbody></table><!-- 56 end --></span>
                </td>
              </tr></tbody></table><script>premier(1);</script><!-- FAQ 끝 --><!-- faq end --></td>
    </tr><tr><td height="50"></td>
    </tr></tbody></table>





	

	<footer class="container-fluid text-center">
		<p>Online Store Copyright</p>
		<form class="form-inline">
		</form>
	</footer>

</body>
</html>