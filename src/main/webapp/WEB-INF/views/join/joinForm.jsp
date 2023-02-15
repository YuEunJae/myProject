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

    <!-- 로그인폼 css -->
    <link rel="stylesheet" href="/resources/css/joinForm.css">
</head>
<body>

    <!-- 로고영역 -->
    <div class="container">
        <div class="row col-sm-12 logo-box">
            <img src="../image/logo.png">
        </div>
    </div>

    <!-- 회원가입폼 영역 -->
    <div class="container contents-box">
        <div class="row col-sm-12">

            <div class="row col-sm-4"></div>
            <div class="row col-sm-5 mt-3">
                <form action="">
                    <div class="mb-3 mt-3">
                      <label for="email">Email:</label>
                      <button class="right btn btn-warning" type="button">check</button>
                      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                    </div>
                    <div class="mb-3">
                      <label for="pwd">Password:</label>
                      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
                    </div>
                    <button type="submit" class="btn btn-primary">회원가입</button>
                    <button type="cancel" class="btn btn-primary">취소</button>
                  </form>
            </div>
            <div class="row col-sm-3"></div>
        </div>
    </div>
    
</body>

</html>