<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Data Retrieval</title>
</head>
<body>
    <%
        // 필요한 Java 클래스와 JDBC 드라이버 임포트
        String driver = "org.mariadb.jdbc.Driver";
        String url = "jdbc:mariadb://localhost:3306/testPythonData"; // 자신의 데이터베이스 정보로 수정
        String username = "root";
        String password = "root";

        Connection connection = null;
        List<String> timeList = new ArrayList<>();
        List<Float> temperatureList = new ArrayList<>();
        List<Float> humidityList = new ArrayList<>();
        List<Integer> dustList = new ArrayList<>();

        try {
            // JDBC 드라이버 로드
            Class.forName(driver);

            // 데이터베이스 연결
            connection = DriverManager.getConnection(url, username, password);

            // SQL 쿼리 실행
            Statement statement = connection.createStatement();
            String sql = "SELECT temperature, humidity, dust, time FROM data"; // 자신의 테이블 정보로 수정
            ResultSet result = statement.executeQuery(sql);

            // 데이터 가져와 리스트에 추가
            while (result.next()) {
                String timeValue = result.getString("time");
                float temperatureValue = result.getFloat("temperature");
                float humidityValue = result.getFloat("humidity");
                int dustValue = result.getInt("dust");

                timeList.add(timeValue);
                temperatureList.add(temperatureValue);
                humidityList.add(humidityValue);
                dustList.add(dustValue);
            }

            // 연결 종료
            result.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        // 데이터를 JSON 형식으로 변환하여 세션 스토리지에 저장
        String jsonData = "{ \"time\": " + new Gson().toJson(timeList) + ", \"temperature\": " + new Gson().toJson(temperatureList) + ", \"humidity\": " + new Gson().toJson(humidityList) + ", \"dust\": " + new Gson().toJson(dustList) + " }";
        session.setAttribute("jsonData", jsonData);
    %>

    <script>
        // 데이터를 JSON 형식으로 변환하여 세션 스토리지에 저장
        var jsonData = '<%=(String) session.getAttribute("jsonData") %>';
        sessionStorage.setItem("jsonData", jsonData);
    </script>
</body>
</html>
