<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>Temp Page</title>
  <link rel="stylesheet" href="../front/css/tempPage.css">
  <script src="../back/LoginAndLogout/logout.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="../back/graphJs/graph.js"></script>
</head>
<body>
  <div class="container">
    <div class="appName">
      <h2>AI스마트식당</h2>
    </div>

    <div class="bener">
        <h1>2. 온습도 관리 페이지</h1>
        <h1 id="logout" onclick="logout()"> logout </h1>
    </div>
    <p id="userName">
      <a></a>
    </p>

    <p id="1userName">
        <a></a>
        <br>
        
        <a href="#" , onclick="location.href='http://localhost:8080/Capton/CaptonDesign/back/dataBase/dataStorage.jsp'">매장 온습도</a> 
        <br>  
        <a href="#" , onclick="location.href='http://localhost:8080/Capton/CaptonDesign/back/dataBase/CameraDataStorage.jsp'">주방관리</a>
        <br>       
        <a href="#" , onclick="location.href='http://localhost:8080/Capton/CaptonDesign/front/mainpage.jsp'">메인페이지</a> 
    </p>

    <div class="graph">
      <!-- 그래프를 표시할 canvas 요소 -->
      <canvas id="dataChart" width="600" height="800"></canvas>
    </div>

    <table class="table">
      <thead>
          <tr>
              <th>날짜</th>
              <th>매장 온도</th>
              <th>매장 습도</th>
              <th>매장 미세먼지</th>
          </tr>
      </thead>
      <tbody id="table-body">
      </tbody>
    </table>
  </div>

 <script>
    // 세션 스토리지에서 데이터 가져오기
    
    
// 세션 스토리지에서 데이터 가져오기
const temperatureValue1 = localStorage.getItem("temperatureValue1") || "";
const humidityValue1 = localStorage.getItem("humidityValue1") || "";
const dustValue1 = localStorage.getItem("dustValue1") || "";
const timeValue1 = localStorage.getItem("timeValue1") || "";

const temperatureValue2 = localStorage.getItem("temperatureValue2") || "";
const humidityValue2 = localStorage.getItem("humidityValue2") || "";
const dustValue2 = localStorage.getItem("dustValue2") || "";
const timeValue2 = localStorage.getItem("timeValue2") || "";

const temperatureValue3 = localStorage.getItem("temperatureValue3") || "";
const humidityValue3 = localStorage.getItem("humidityValue3") || "";
const dustValue3 = localStorage.getItem("dustValue3") || "";
const timeValue3 = localStorage.getItem("timeValue3") || "";

const temperatureValue4 = localStorage.getItem("temperatureValue4") || "";
const humidityValue4 = localStorage.getItem("humidityValue4") || "";
const dustValue4 = localStorage.getItem("dustValue4") || "";
const timeValue4 = localStorage.getItem("timeValue4") || "";

const temperatureValue5 = localStorage.getItem("temperatureValue5") || "";
const humidityValue5 = localStorage.getItem("humidityValue5") || "";
const dustValue5 = localStorage.getItem("dustValue5") || "";
const timeValue5 = localStorage.getItem("timeValue5") || "";

// 그래프를 그리기 위한 데이터
var ctx = document.getElementById('dataChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line', // 선 그래프
    data: {
        labels: [timeValue1, timeValue2, timeValue3, timeValue4, timeValue5], // 시간 정보를 레이블로 사용
        datasets: [
            {
                label: '온도 (°C)',
                data: [temperatureValue1, temperatureValue2, temperatureValue3, temperatureValue4, temperatureValue5],
                borderColor: 'rgb(255, 0, 0)',
                borderWidth: 2,
                fill: false
            },
            {
                label: '습도 (%)',
                data: [humidityValue1, humidityValue2, humidityValue3, humidityValue4, humidityValue5],
                borderColor: 'rgb(0, 0, 255)',
                borderWidth: 2,
                fill: false
            },
            {
                label: '미세먼지',
                data: [dustValue1, dustValue2, dustValue3, dustValue4, dustValue5],
                borderColor: 'rgb(0, 255, 0)',
                borderWidth: 2,
                fill: false
            }
        ]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false
    }
});

</script>
 
  <script>
    const temperatureValue = localStorage.getItem("temperatureValue");
    const humidityValue = localStorage.getItem("humidityValue");
    const dustValue = localStorage.getItem("dustValue");
    const timeValue = localStorage.getItem("timeValue");

    // 테이블의 tbody 요소 가져오기
    var tableBody = document.getElementById("table-body");

    // 필터링 조건 설정 (온도가 -5°C 미만 또는 30°C 이상, 습도가 60% 미만 또는 80% 이상, 미세먼지 농도가 80 이상)
    var filteredData = [];
    var timeArray = timeValue.split(',');
   
