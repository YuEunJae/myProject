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

    <!-- css -->
    <link rel="stylesheet" href="/resources/css/common.css">
    <link rel="stylesheet" href="/resources/css/board.css">
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
                <div class="contents-title"><h3>게시판</h3></div>

                <div class="contents-option">
                    <div class="left-area">
                        <span>총 게시물 752건</span>
                        <span>현재 페이지 1/5</span>
                    </div>

                    

                    <div class="right area">
                        <label>페이지당 목록</label>
                        <select>
                            <option>10</option>
                            <option>20</option>
                            <option>30</option>
                        </select>
                        <button type="button">변경</button>
                    </div>
                </div>

                <table class="contents-box">
                    <thead>
                        <tr>
                            <th class="col-sm-1">순번</th>
                            <th class="col-sm-5">제목</th>
                            <th class="col-sm-1">글쓴이</th>
                            <th class="col-sm-1">작성일</th>
                            <th class="col-sm-1">조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>이 프로젝트 언제 완성될까?</td>
                            <td>마스터</td>
                            <td>2023-02-04</td>
                            <td>0</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>나 지금 너무 여유부리고 있는 것 같다</td>
                            <td>유xx</td>
                            <td>2023-02-04</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>로또를 조금만 더 생각해서 찍을까?</td>
                            <td>사라만더</td>
                            <td>2023-02-04</td>
                            <td>5</td>
                        </tr>
                    </tbody>
                </table>

                <div class="search-area">
                    <form>
                        <select>
                            <option selected value="1">-검색선택-</option>
                            <option value="title">제목</option>
                            <option value="content">내용</option>
                            <option value="writer">글쓴이</option>
                        </select>
                        <input type="text">
                        <button type="button">검색</button>
                        <button type="button">초기화</button>
                    </form>

                </div>
                
            </div>

        </div>
    </div>

</body>
</html>