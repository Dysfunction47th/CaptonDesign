// graph.js
{/* <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> */}

function createGraph() {
    // 세션 스토리지에서 데이터 가져오기
    // var temperatureValue = parseFloat(sessionStorage.getItem("temperatureValue"));
    // var humidityValue = parseFloat(sessionStorage.getItem("humidityValue"));
    // var dustValue = parseInt(sessionStorage.getItem("dustValue"));
    // var timeValue = sessionStorage.getItem("timeValue");
    var temperatureValue = 25;
    var humidityValue = 66.5;
    var dustValue = 25.36;
    var timeValue = "2022-06-11 16:42:12";

    // 그래프 생성
    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
      type: 'line', // 선 그래프
      data: {
        labels: [timeValue],
        datasets: [
          {
            label: '온도 (°C)',
            data: [temperatureValue],
            borderColor: 'red',
            borderWidth: 2,
            fill: false
          },
          {
            label: '습도 (%)',
            data: [humidityValue],
            borderColor: 'blue',
            borderWidth: 2,
            fill: false
          },
          {
            label: '미세먼지',
            data: [dustValue],
            borderColor: 'green',
            borderWidth: 2,
            fill: false
          }
        ]  
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
    });
}