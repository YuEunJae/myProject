<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Demo</title>

    <!-- 부트스트랩  -->
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- leaflet -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
     integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI="
     crossorigin=""/>

    <!-- 공통 css -->
    <link rel="stylesheet" href="/resources/css/common.css">

    <!-- 화면 css -->
    <link rel="stylesheet" href="/resources/css/myMap.css">

</head>
<body>
    
    <!-- 상단 바 -->
    <div class="container tob-block">
        <div class="row">
            <div class="col-sm-12">
                <span class="col-sm-9">
                    <div class="logo-block"><a href=""><img class="logo-image" src="../image/logo.png"></a></div>
                </span>
                <span class="col-sm-2 right"><a href="">로그아웃</a></span>
                <span class="col-sm-1"></span>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            
            <!-- 좌측 메뉴 바 -->
            <ul class="col-sm-2 menu">
                <ol><a href="">게시판</a></ol>
                <ol><a href="">지도</a></ol>
                <ol><a href="">차트</a></ol>
                <ol><a href="">증명서</a></ol>
            </ul>

            <!-- 컨텐츠 영역 -->
            <div class="col-sm-9">
                <div class="contents-title"><h3>지도</h3></div>
                
                <div id="map"></div>
            </div>

        </div>
    </div>


</body>

<!-- leaftlet.js -->
<script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
        integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM="
        crossorigin=""></script>

<script type="text/javascript">
    var hanRiverPos = [37.5118, 126.9745];
    var map = L.map('map').setView(hanRiverPos, 12);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    L.marker(hanRiverPos).addTo(map)
        .bindPopup('여기는 한강입니다!')
        .openPopup();

    var circle = L.circle([37.4918, 126.9645], {
            color: 'red',
            fillColor: '#f03',
            fillOpacity: 0.5,
            radius: 500
        }).addTo(map);

    var polygon = L.polygon([
            [37.5018, 126.8645],
            [37.5118, 126.8845],
            [37.4918, 126.9245]
        ]).addTo(map);
    
    circle.bindPopup("I am a circle.");
    polygon.bindPopup("I am a polygon.");

</script>

       

</html>