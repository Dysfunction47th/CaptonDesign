<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*, java.util.*, java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Data Storage</title>
</head>
<body>
    <script>
    console.log("dataSTO");
    </script>

    <%
        // 필요한 Java 클래스와 JDBC 드라이버 임포트
        String driver = "org.mariadb.jdbc.Driver";
        String url = "jdbc:mariadb://192.168.40.94:3306/testPythonData"; // 자신의 데이터베이스 정보로 수정
        String username = "root";
        String password = "root";

        Connection connection = null;
    %>
    <script>
        console.log("connection");
    </script>

    <%
    try {
        // JDBC 드라이버 로드
        Class.forName(driver);

        // 데이터베이스 연결
        connection = DriverManager.getConnection(url, username, password);
        %>

        <script>
        console.log("데이터베이스 연결");
        </script>

        <%
        // SQL 쿼리 실행
        Statement statement = connection.createStatement();
        String sql = "SELECT temperature, humidity, dust, time FROM data"; // 자신의 테이블 정보로 수정
        ResultSet result = statement.executeQuery(sql);

        // 배열을 사용하여 데이터 저장
        ArrayList<String> temperatureValues = new ArrayList<>();
        ArrayList<String> humidityValues = new ArrayList<>();
        ArrayList<String> dustValues = new ArrayList<>();
        ArrayList<String> timeValues = new ArrayList<>();

        while (result.next()) {
            float temperatureValue = result.getFloat("temperature");
            float humidityValue = result.getFloat("humidity");
            int dustValue = result.getInt("dust");
            String timeValue = result.getString("time");

            // 데이터를 배열에 추가
            temperatureValues.add(String.valueOf(temperatureValue));
            humidityValues.add(String.valueOf(humidityValue));
            dustValues.add(String.valueOf(dustValue));
            timeValues.add(timeValue);
        }

        // 배열 크기를 5로 유지
        if (temperatureValues.size() > 5) {
            temperatureValues.subList(0, temperatureValues.size() - 5).clear();
            humidityValues.subList(0, humidityValues.size() - 5).clear();
            dustValues.subList(0, dustValues.size() - 5).clear();
            timeValues.subList(0, timeValues.size() - 5).clear();
        }

        // 데이터를 로컬 스토리지에 저장
        for (int i = 0; i < temperatureValues.size(); i++) {
            int index = i + 1;
        %>
        <script>
            console.log("temperatureValue", "<%= temperatureValues.get(i) %>");
            console.log("humidityValue", "<%= humidityValues.get(i) %>");
            console.log("dustValue", "<%= dustValues.get(i) %>");
            console.log("timeValue", "<%= timeValues.get(i) %>");

            localStorage.setItem("temperatureValue<%= index %>", "<%= temperatureValues.get(i) %>");
            localStorage.setItem("humidityValue<%= index %>", "<%= humidityValues.get(i) %>");
            localStorage.setItem("dustValue<%= index %>", "<%= dustValues.get(i) %>");
            localStorage.setItem("timeValue<%= index %>", "<%= timeValues.get(i) %>");
        </script>
        <%
        }

        // 연결 종료
        result.close();
        statement.close();
        connection.close();
        
        %>
        <script type="text/javascript">
        window.location.href = "http://localhost:8080/JSP2/CaptonDesign/front/tempPage.jsp";
        </script>
    <% } catch (Exception e) {
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
    %>
</body>
</html>
