<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>키워드로 장소검색하고 목록으로 표출하기</title>
<link rel="stylesheet" type="text/css" href="map.css" />
</head>
<body>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6b777dfc5bd00124977083ca84a84785&libraries=services"></script>
	<div id="map" style="width: 100%; height: 350px;"></div>
	<div id="clickLatlng"></div>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		//geocoder.addressSearch(addr, callback(result),option)
		var data;
		var xdata;
		geocoder.addressSearch('경기 성남시 분당구 판교역로 235 에이치스퀘어',
				function(result, status) {
							// 정상적으로 검색이 완료됐으면 
							if (status === kakao.maps.services.Status.OK) {

								var coords = new kakao.maps.LatLng(result[0].y,
										result[0].x);
								var message = '위도와 경도: ('
										+ result[0].y + ', ';
								message += result[0].x + ')';

								var resultDiv = document
										.getElementById('clickLatlng');
								resultDiv.innerHTML = message;
								//console.log(result[0].x);
							
								xdata = result[0].x;
								//console.log(xdata);
								// 결과값으로 받은 위치를 마커로 표시합니다
								var marker = new kakao.maps.Marker({
									map : map,
									position : coords
								});

								// 인포윈도우로 장소에 대한 설명을 표시합니다
								var infowindow = new kakao.maps.InfoWindow(
										{
											content : '<div style="width:150px;text-align:center;padding:6px 0;">장소</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
								
							}
						});
						data = xdata;
						console.log(data);
	</script>

</body>
</html>