
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
    <%request.setCharacterEncoding("utf-8"); %>





<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>Camera Page</title>
  <link rel="stylesheet" href="../front/css/cameraPage.css">
  <script src="../back/LoginAndLogout/logout.js"></script>
</head>





<body>
  <div class="container">
    <div class="appName">
      <h2>AI스마트식당</h2>
    </div>

    <div class="bener"> 
        <h1>3. 카메라 관리 페이지</h1>
        <h1 id="logout" onclick="logout()"> logout </h1>
    </div>

    <!-- userName   -->
    <p id="userName">
      <a></a>
    </p>

    <p id="1userName">
        
        <a href="#" , onclick="location.href='http://localhost:8080/Capton/CaptonDesign/back/dataBase/dataStorage.jsp'">매장 온습도</a> 
        <br>  
        <a href="#" , onclick="location.href='http://localhost:8080/Capton/CaptonDesign/back/dataBase/CameraDataStorage.jsp'">주방관리</a>
        <br>       
        <a href="#" , onclick="location.href='http://localhost:8080/Capton/CaptonDesign/front/mainpage.jsp'">메인페이지</a> 
    </p>

    <div class="camera-stream">
      <img src="http://192.168.40.94:8090/?action=stream">
    </div>
	<table class="table">
      <thead>
        <tr>
          <th>날짜</th>
          <th>매장 이슈</th>
          
        </tr>
      </thead>
      <tbody>

        <!--timeValue1   -->
        <tr>
          
          <td id="timeValue1"> 
            <script> 
                document.getElementById("timeValue1").innerText = localStorage.getItem("CameraTimeValue1");
                // 클릭 이벤트 핸들러 추가
                document.getElementById("timeValue1").addEventListener("click", function() {
                  
                  // 클릭 시 "camera_error1.html"로 이동
                  //window.location.href = "camera_error1.html";
                });
            </script> 
          </td> 
          
          <td id="timeValue1Error">
            <script>
             
              if (timeValue1 == false) {
                // if 문이 참일 때 "이슈"를 td 요소에 표시
                document.getElementById("timeValue1Error").innerText = "이슈";
              }
            </script>
            <img src="\\192.168.149.103\pi\Face_mask_detector-master\DETECT_1.jpg" alt="DETECT_1.jpg">
          </td>
        </tr>
        
        <!--timeValue2   -->
        
        <tr>
          <td id="timeValue2"> 
            <script> 
                document.getElementById("timeValue2").innerText = localStorage.getItem("CameraTimeValue2");
                console.log("localStorage.getItem('CameraTimeValue2')"  + localStorage.getItem("CameraTimeValue2"))
                
                // 클릭 이벤트 핸들러 추가
                document.getElementById("timeValue2").addEventListener("click", function() {
             
                  // 클릭 시 "camera_error2.html"로 이동
                 // window.location.href = "camera_error2.html";
                });
            </script> 
          </td> 
          
          
          <td id="timeValue2Error">
            <script>
              
              if (timeValue2 == false) {
                // if 문이 참일 때 "이슈"를 td 요소에 표시
                document.getElementById("timeValue2Error").innerText = "이슈";
              }
            </script>
            <img src="localhost:8080/projectname/img/DETECT_2.jpglocalhost:8080/projectname/img/DETECT_2.jpg" alt="DETECT_2.jpg">
          </td>
        </tr>
        
        <!--timeValue3   -->
        
        <tr>
          <td id="timeValue3"> 
            <script> 
                document.getElementById("timeValue3").innerText = localStorage.getItem("CameraTimeValue3");
                
                // 클릭 이벤트 핸들러 추가
                document.getElementById("timeValue3").addEventListener("click", function() {
                  
                  // 클릭 시 "camera_error3.html"로 이동
                  //window.location.href = "camera_error3.html";
                });
            </script> 
          </td> 

          <!-- 아이디가 "timeValue3"인 td 요소 추가 -->
          <td id="timeValue3Error">
            <script>
              
              if (timeValue3 == false) {
                // if 문이 참일 때 "이슈"를 td 요소에 표시
                document.getElementById("timeValue3Error").innerText = "이슈";
              }
            </script>
            <img src="\\\\192.168.149.103\pi\Face_mask_detector-master\DETECT_3.jpg" alt="DETECT_3.jpg">
          </td>
        </tr>
        
        <!--timeValue4   -->
        
        <tr>
          <td id="timeValue4"> 
            <script> 
                document.getElementById("timeValue4").innerText = localStorage.getItem("CameraTimeValue4");
                
                // 클릭 이벤트 핸들러 추가
                document.getElementById("timeValue4").addEventListener("click", function() {
                  
                  // 클릭 시 "camera_error4.html"로 이동
                  //window.location.href = "camera_error4.html";
                });
            </script> 
          </td> 

          <!-- 아이디가 "timeValue4"인 td 요소 추가 -->
          <td id="timeValue4Error">
            <script>
              
              if (timeValue4 == false) {
                // if 문이 참일 때 "이슈"를 td 요소에 표시
                document.getElementById("timeValue4Error").innerText = "이슈";
              }
            </script>
            <img src="\\192.168.149.103\pi\Face_mask_detector-master\DETECT_4.jpg" alt="DETECT_4.jpg">
          </td>
        </tr>

        <!--timeValue5   -->

        <tr>
          <td id="timeValue5"> 
            <script> 
                document.getElementById("timeValue5").innerText = localStorage.getItem("CameraTimeValue5");
                
                // 클릭 이벤트 핸들러 추가
                document.getElementById("timeValue5").addEventListener("click", function() {
                  
                  // 클릭 시 "camera_error5.html"로 이동
                  //window.location.href = "camera_error5.html";
                });
            </script> 
          </td> 

          <!-- 아이디가 "timeValue5"인 td 요소 추가 -->
          <td id="timeValue5Error">
            <script>
              
              if (timeValue5 == false) {
                // if 문이 참일 때 "이슈"를 td 요소에 표시
                document.getElementById("timeValue5Error").innerText = "이슈";
              }
            </script>
            
                 <img src="\\192.168.149.103\pi\Face_mask_detector-master\DETECT_5.jpg" alt="DETECT_5.jpg">

            

          </td>
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



  
  <script>
  
    
    

    
  </script>