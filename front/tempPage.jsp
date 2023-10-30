<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
    <%request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>Temp Page</title>
  <link rel="stylesheet" href="/front/css/tempPage.css">
  <script src="/back/LoginAndLogout/logout.js"></script>
  <!-- <link rel="stylesheet" href="https://pyscript.net/latest/pyscript.css" />
  <script defer src="https://pyscript.net/latest/pyscript.js"></script> -->
</head>
<body>
  <div class="container">
    <div class="appName">
      <h2>AI스마트식당</h2>
    </div>

    <div class="bener"> 
        <h1>2. 온습도 관리 페이지</h1>
        <h1 id="logout" onclick="logout()"> logout </h1> 
        <!-- 매장 온습도를 클릭하는순간 db.jsp가 살행되고 바로 temp page로 이동되게 설계   -->
    </div>
    <p id="userName">
      <a></a>
    </p>

    <p id="1userName">
        <a></a>
        <br>
        <a href="#" , onclick="location.href='http://localhost:8088/test/back/dataBase/dataStorage.jsp'">매장 온습도</a> 
        <br>
        <a href="#" , onclick="location.href='http://localhost:8088/front/cameraPage.jsp'">주방관리</a>
        <br>
        <a href="#" , onclick="location.href='http://localhost:8088/front/mainpage.html'">메인페이지</a> 

    </p>


    <div class="graph">
      <svg width="100%" height="200px">
        <rect x="0" y="0" width="100%" height="200px" fill="blue" />
      
      </svg>
      <!-- this area is graph page  -->
      
    </div>
    
    <table class="table">
      <thead>
        <tr>
          <th>날짜</th>
          <th>매장 온도</th>
          <th>매장 습도</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>2023-10-15</td>
          <td>27℃</td>
          <td>90%</td>
        </tr>
        <tr>
          <td>2023-10-14</td>
          <td>26℃</td>
          <td>85%</td>
        </tr>
        <tr>
          <td>2023-10-13</td>
          <td>25℃</td>
          <td>80%</td>
        </tr>
      </tbody>
    </table>
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