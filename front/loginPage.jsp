<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
    <%request.setCharacterEncoding("utf-8"); %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="../front/css/loginScreen.css">
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->

    <script src="../back/LoginAndLogout/login.js"></script>
    

</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="#" method="">

            <div class="input-group">
                <a id="kakao-login-btn"> <script> login() </script></a>

            </div>
            
            <button class="api-btn" onclick="unlinkApp()">로그아웃하기</button>

        </form>
    </div>
</body>
</html>
