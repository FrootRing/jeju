<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/course.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<style>
.service {
	text-align: center;
	font-size: 20px;
	color: red;
}

.mapIn {
	width: 100%;
    height: 500px;
    position: relative;
    display: inline-block;
    border: 1px solid #ddd;
    margin-top: 20px;
}

.level_info input {
	width : 75px;
}
</style>
<body>
	<div class="wrap">
			<div class="container">
				<div class="sub_warp">
					<!-- 각 코스 제목 -->
					<div class="sub_tit">
						<h1>타이틀</h1><input type="text" value="${olle_load.titleNo }">
					</div>
					<!-- 컨텐츠 시작 -->
					<!-- 왼쪽 박스 -->
					<div class="contents_warp">
						<!-- 코스맵 -->
						<div class="course_view_area">
							<!-- 이미지 추가하면 css도 추가 -->
							<input type="file" value="${olle_load.mapImg }" class="mapIn">
							<div class="course_info">
								<div class="location">
									<input type="file" value=${olle_load.thumb }>
								</div>
								<div class="icon_info">
									<img src="${pageContext.request.contextPath }/img/course/all_course/icon_info.jpg">
								</div>
								<div class="btn_audio" onclick="chk_audio('01')">
									<p class="icon_audio">
										<span>오디오가이드듣기</span>
									</p>
								</div>
								<audio controls="controls" style="display: none;" id="myAudio">
									<source src="" type="audio/mp3" style="width: 50px;">
								</audio>
							</div>
						</div>

						<!-- 비주얼 맵 -->
						<div class="visual_map">
							<!-- 이미지 추가하면 css도 추가 -->
							<input type="file" value=${olle_load.vmap } class="vmap">
						</div>

						<!-- 코스개요 -->
						<div class="info_txt_area">
							<div class="left_area">
								<div class="level_info">
									<span>총길이</span> : <input type="file" value=${olle_load.totLoad }> 
									<span>소요시간</span> : <input type="file" value="${olle_load.totTime }">
									<span>난이도</span> : <input type="file" value="${olle_load.levelStar }">
									<div class="graph">
										<input type="file" value="${olle_load.graph }">그래픽 이미지
									</div>
								</div>
							</div>
							<div class="right_area">
								<!-- course_txt -->
								<div class="con_txt">
									<h3><input type="text" value="${olle_load.courseTxt }" style="height: 170px; width: 513px;"></h3>
								</div>
							</div>

							<div class="con_box">
								<!-- 휠체어 구간 -->
								<div class="left_con">
									<div class="up"></div>
										<div class="con_txt">
											<h2>휠체어 구간</h2>
											<h3>
												<span>난이도</span> :
													<input type="file" value="${olle_load.wheelStar }" style="width : 200px;">
												| <span>구간거리</span> : <input type="text" value="${olle_load.wheelLoad }"> <br> 
												<span>시작점</span> : <input type="text" value="${olle_load.wheelStart }"> <br> <br>
												<input type="text" value="${olle_load.wheelContent }" style="height: 100px; width: 513px;">
											</h3>
										</div>
								</div>
								<div class="right_con">
									<div class="up"></div>
									<div class="con_txt">
										<h2>코스 Tip</h2>
										<h3><input type="text" value="${olle_load.tip  }" style="height: 170px; width: 513px;"></h3>
									</div>
								</div>
							</div>
							<!-- 올레지기 -->
							<div class="keeper_box">
								<p class="sub_bull">
									<span>올레지기</span>
								</p>
								<br>
								<h5>
									"제주올레 길이 처음이라도 문제없습니다." <br> "낯선 길에 대한 두려움은 내려놓고, 새로운 만남에
									대한 설렘만 가지고 오세요."
								</h5>
								<div class="right_keeper">
								</div>
							</div>
								<div class="dashline_box">
									<div class="left_con">
										<div class="friends02">
											<input type="file" value="${olle_load.friendImg }">
											<div class="con_txt">
												<p>세계 곳곳의 도보 여행길과 연대합니다.</p>
												<h3>(사)제주올레는 해외 도보여행 단체와 손을 잡고 한 코스 또는 한 구간을 지정해 공동 홍보
													마케팅을 진행하는 글로벌 프로젝트를 펼칩니다. 그리스, 이탈리아, 캐나다, 영국, 스위스, 레바논 등
													‘우정의길’을 맺은 세계 유명 도보 여행지 9곳에서도 제주올레의 반가운 얼굴을 만납니다.</h3>
											</div>
										</div>
									</div>
									<!-- 우정의 길 -->
									<div class="right_con">
										<div class="up"></div>
										<div class="con_txt">
											<h2>우정의 길</h2>
											<p class="sub_bull02">
												<span><input type="text" value="${olle_load.friendName }"></span>
											</p>
											<br>
											<div class="friends_info">
												<input type="file" value="${olle_load.friendSq }">
												<ul>
													<li><span>위치 구간</span> : <input type="text" value="${olle_load.friendLoc }"></li>
													<li><span>난이도</span> :&nbsp;&nbsp; <input type="text" value="${olle_load.friendLevel }"></li>
													<li><span>코스 경로</span> : <input type="text" value="${olle_load.friendCourse }"></li>
												</ul>
											</div>
											<br>
												<input type="text" value="${olle_load.friendLink }" style="margin-top: 10px;">
											<br>
											<input type="text" value="${olle_load.friendInfo }" style="margin-top: 10px; width: 513px; height: 300px;">
										</div>
									</div>
								</div>
							<!-- 공식안내소 -->
							<div class="dashline_box">
								<div class="left_con">
									<div class="con_txt">
										<h1>공식안내소</h1>
										<h3>제주올레 공식 안내소에는 제주올레의 모든 것을 알고 있는 선생님들이 있습니다. 척척박사
											선생님들께 제주올레의 탄생과 역사에 관해 설명도 듣고, 제주올레가 제공하는 올레길의 다양한 자료도 받아
											가세요.</h3>
									</div>
								</div>
								<div class="right_con">
									<div class="infobox">
										<p class="sub_bull02">
											<span>제주올레 공식 안내소(말미오름 입구)</span>
										</p>
										<h3>
											<span>위치</span> " : 서귀포시 성산읍 시흥리 2665-1 " <br>
										</h3>
										<h5>운영시간 : 08:00 ~ 17:00(점심시간=12:00~13:00) 명절 설, 추석 당일 휴무</h5>
									</div>
								</div>
							</div>
							<!-- 우정안내소 -->
						</div>
						<div class="info_txt_area02" id="olle_fraffic">
							<div class="left_area">
								<div class="con_txt">
									<h1>교통정보</h1>
									<h3>2017년 8월, 제주도 대중교통 체계 전면 개편 후, 지속적으로 노선 변경이 진행되고 있습니다.
										길 아래 내용이 최신 정보가 아닐 수 있는 점 양해 부탁 드리며 버스 탑승 전 최신 정보를 다시 한 번
										확인하시기 바랍니다.</h3>
									<div class="traffic_info">
										<div class="traffic_from">
											<a href="https://bus.jeju.go.kr/" target="_blank">
												<div class="traffic_icon">
													<img src="${pageContext.request.contextPath }/img/course/all_course/jeju_bus.jpg">
												</div>
												<div class="traffic_text">제주버스정보</div>
											</a>
										</div>
										<div class="traffic_from">
											<a href="https://m.map.kako.com/" target="_blank">
												<div class="traffic_icon">
													<img src="${pageContext.request.contextPath }/img/course/all_course/kakaomap.jpg">
												</div>
												<div class="traffic_text">다음/카카오맵</div>
											</a>
										</div>
										<div class="traffic_from">
											<a href="https://m.map.naver.com/" target="_blank">
												<div class="traffic_icon">
													<img src="${pageContext.request.contextPath }/img/course/all_course/navermap.jpg">
												</div>
												<div class="traffic_text">네이버지도</div>
											</a>
										</div>
										<p>※이미지 클릭 시 해당 페이지/앱으로 이동</p>
									</div>
								</div>
							</div>
							<div class="right_area">
								<div class="infobox">
									<p class="sub_bull02">
										<span>문의 및 대중교통 노선 안내</span>
									</p>
									<h3>제주올레 콜센터(064-762-2190) 및 스마트폰 어플리케이션</h3>
									<p class="sub_bull02">
										<span>콜택시</span>
									</p>
									<h3>성산 호출개인택시 064-784-3030 / 성산 콜택시 064-784-8585</h3>
								</div>
							</div>
							<div class="dashline_box">
								<div class="traffic_bull">
									<img
										src="${pageContext.request.contextPath }/img/course/start_p.png">
									<span>시작점 찾아가기</span>
								</div>
								<div class="traffic_list">
									<ul>
										<li class="traffic_img">
											<input type="file" value="${olle_load.startImg }">
										</li>
									</ul>
								</div>
								<div class="traffic_bull">
									<img
										src="${pageContext.request.contextPath }/img/course/finish_p.png">
									<span>종점에서 돌아가기</span>
								</div>
								<div class="traffic_list">
									<ul>
										<li class="traffic_img">
											<input type="file" value="${olle_load.endImg }">
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="sub_wrap02">
				<div class="contents_warp02">
					<div class="gallery_wrap">
						<h1>포토갤러리</h1>
						<div class="slideshow_container">
							<div class="watermark">
								<img
									src="${pageContext.request.contextPath }/img/course/all_course/trail_watermark.png">
							</div>
							<ul>
								<!-- 반복문 -->
								<li class="mySlides fade" style="display: block;" value="${gallery }">
									<input type="file" value="${olle_load.gallery }">
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 주변관광지 -->
			<div class="sub_wrap03">
				<div class="contents_wrap">
					<div class="info_txt_area02">
						<div class="btn_area">
							<ul>
								<li class="btn_spot_on" id="place_tab01"><a
									href="javascript:chk_place('spot')">주변 관광지</a></li>
								<li class="btn_spot" id="place_tab02"><a
									href="javascript:chk_place('stay')">주변 숙박안내</a></li>
								<li class="btn_spot" id="place_tab03"><a
									href="javascript:chk_place('food')">주변 식당안내</a></li>
							</ul>
						</div>
						<!-- 주변 관광지 -->
						<div class="spot_list_wrap" id="place_spot">
							<div class="spot_form">
								<div class="spot_img">
									<input type="file" value="${olle_load.spotImg }">
									<div class="spot_text">
										<input type="text" value="${olle_load.spotName }">
										<p><input type="text" value="${olle_load.spotTxt }"></p>
									</div>
								</div>
							</div>
						</div>
							<!-- 주변 숙박 -->
							<div class="table_wrap" id="place_stay" style="display: none;">
								<table class="around_t">
									<tbody>
										<tr>
											<th>업체명</th>
											<th>주소/연락처</th>
										</tr>
										<tr>
											<td rowspan="2"><input type="text" value="${olle_load.stayName }"></td>
											<td class="r_01"><input type="text" value="${olle_load.stayAdd }"></td>
										</tr>
										<tr>
											<td class="r_01"><input type="text" value="${olle_load.stayNumber }"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 주변 밥칮 -->
							<div class="table_wrap" id="place_food" style="display: none">
								<table class="around_t">
									<tr>
										<th>업체명</th>
										<th>주소/연락처</th>
									</tr>
									<tr>
										<td rowspan="2"><input type="text" value="${olle_load.foodName }"></td>
										<td class="r_01"><input type="text" value="${olle_load.foodAdd }"></td>
									</tr>
									<tr>
										<td class="r_01"><input type="text" value="${olle_load.foodNumber }"></td>
									</tr>
								</table>
							</div>
					</div>
				</div>
				<input type="button" value="등록" onclick="addCourse();">
			</div>	
	</div>
</body>
</html>
<!-- 갤러리 슬라이드 -->
<script type="text/javascript">
function addCourse() {
	
}

	/* var slideIndex = 1;
	showSlides(slideIndex);

	function plusSlides(n) {
		showSlides(slideIndex += n);
	}

	function currentSlide(n) {
		showSlides(slideIndex = n);
	}

	function showSlides(n) {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		if (n > slides.length) {
			slideIndex = 1
		}
		if (n < 1) {
			slideIndex = slides.length
		}
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex - 1].style.display = "block";
	}
	*/

	//주변정보
	function chk_place(place) {
		if (place == "spot") {
			$("#place_spot").css("display", "");
			$("#place_stay").css("display", "none");
			$("#place_food").css("display", "none");

			$("#place_tab01").attr('class', 'btn_spot_on');
			$("#place_tab02").attr('class', 'btn_spot');
			$("#place_tab03").attr('class', 'btn_spot');
		}
		if (place == "stay") {
			$("#place_spot").css("display", "none");
			$("#place_stay").css("display", "block");
			$("#place_food").css("display", "none");

			$("#place_tab01").attr('class', 'btn_spot');
			$("#place_tab02").attr('class', 'btn_spot_on');
			$("#place_tab03").attr('class', 'btn_spot');
		}
		if (place == "food") {
			$("#place_spot").css("display", "none");
			$("#place_stay").css("display", "none");
			$("#place_food").css("display", "block");

			$("#place_tab01").attr('class', 'btn_spot');
			$("#place_tab02").attr('class', 'btn_spot');
			$("#place_tab03").attr('class', 'btn_spot_on');
		}
	}
</script>
