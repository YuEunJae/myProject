<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>myProject</title>

    <!-- 부트스트랩  -->
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 공통 css -->
    <link rel="stylesheet" href="/resources/css/common.css">

    <!-- 화면 css -->
    <link rel="stylesheet" href="/resources/css/myChart.css">

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
                <div class="contents-title"><h3>차트</h3></div>
                
                <div class="col-sm-6">
                    <canvas id="myChart1"></canvas>
                </div>

                <div class="col-sm-6">
                    <canvas id="myChart2"></canvas>
                </div>

                <div class="col-sm-6">
                    <canvas id="myChart3"></canvas>
                </div>

                <div class="col-sm-6">
                    <canvas id="myChart4"></canvas>
                </div>
            </div>

        </div>
    </div>


</body>

<!-- chart -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script type="text/javascript">

    const ctx1 = document.getElementById('myChart1');
    const ctx2 = document.getElementById('myChart2');
    const ctx3 = document.getElementById('myChart3');
    const ctx4 = document.getElementById('myChart4');

    new Chart(ctx1, {
        type: 'bar',
        data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
            label: '# of Votes',
            data: [12, 19, 3, 5, 2, 3],
            borderWidth: 1
        }]
        },
        options: {
        scales: {
            y: {
            beginAtZero: true
            }
        }
        }
    });

    new Chart(ctx2, {
        type: 'line',
        data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
            label: '# of Votes',
            data: [12, 19, 3, 5, 2, 3],
            borderWidth: 1
        }]
        },
        options: {
        scales: {
            y: {
            beginAtZero: true
            }
        }
        }
    });

    new Chart(ctx3, {
        type: 'scatter',
        data: {
            labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
            datasets: [{
                label: '# of Votes',
                data: [{
                    x: -10,
                    y: 0
                }, {
                    x: 0,
                    y: 10
                }, {
                    x: 10,
                    y: 5
                }, {
                    x: 0.5,
                    y: 5.5
                }],
                backgroundColor: 'rgb(255, 99, 132)'
            }]
        },
        options: {
            responsive: true,
            plugins: {
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: 'Chart.js Scatter Chart'
            }
            }
        }
    });

    new Chart(ctx4, {
        type: 'doughnut',
        data: {
            labels: [
                'Red',
                'Blue',
                'Yellow'
            ],
            datasets: [{
                label: 'My First Dataset',
                data: [300, 50, 100],
                backgroundColor: [
                    'rgb(255, 99, 132)',
                    'rgb(54, 162, 235)',
                    'rgb(255, 205, 86)'
                ],
                hoverOffset: 4
            }]
        }
    });

</script>

</html>