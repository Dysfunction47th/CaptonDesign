<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
    <%request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Main Page</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="/front/css/mainPage.css">
    <script src="/back/LoginAndLogout/logout.js"></script>
    <script src="/back/LoginAndLogout/login.js"></script>

</head>


<body>
    <div class="container">
        <div class="appName">
            <h2>AI스마트식당</h2>
        </div>

        <div class="bener"> 
            <h1>1. 종합 관리 페이지</h1>
            <h1 id="logout" onclick="logout()"> logout </h1>

        </div>
        
        <p id="userName">
            <a></a>
        </p>
        <p id="1userName">
            
            <br>
            <a href="#" , onclick="location.href='http://127.0.0.1:5501/front/tempPage.html'">매장 온습도</a> 
            <br>
            <a href="#" , onclick="location.href='http://127.0.0.1:5501/front/cameraPage.html'">주방관리</a>    
        </p>

    </div>
  </body>
  </html>

<script>
  // 세션 스토리지에서 유저 ID를 가져오는 함수
  function getUserID() {
   
   // 세션 스토리지에서 userid 키로 저장된 값을 가져옴.
   
   const userNickname = sessionStorage.getItem("nickname")
   
   // 만약 유저 ID가 저장되어 있다면 해당 값을 반환하고, 아니면 빈 문자열을 반환.
   
   return userNickname ? userNickname : ""; 


}

// 페이지 로딩 시 실행되는 함수
window.onload = function () {

   const userNickname = getUserID();

   // 유저 ID가 있으면 해당 nickname을 사용하여 <li> 요소를 수정.
   if (userNickname) {
       const userMenu = document.getElementById("userName");
       const anchor = userMenu.querySelector("a");
       anchor.textContent = `${userNickname}님`;
   }
};

// 이후 보안을 위해 로컬 스토리지 초기화
</script>
