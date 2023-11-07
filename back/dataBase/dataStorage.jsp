<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*, java.util.*"%>

    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Data Storage</title>
</head>
<body>
    <%
        // 필요한 Java 클래스와 JDBC 드라이버 임포트
        String driver = "org.mariadb.jdbc.Driver";
        String url = "jdbc:mariadb://localhost:3306/testPythonData"; // 자신의 데이터베이스 정보로 수정
        String username = "root";
        String password = "root";

        Connection connection = null;

        try {
            // JDBC 드라이버 로드
            Class.forName(driver);

            // 데이터베이스 연결
            connection = DriverManager.getConnection(url, username, password);

            // SQL 쿼리 실행
            Statement statement = connection.createStatement();
            String sql = "SELECT temperature, humidity, dust, time FROM data"; // 자신의 테이블 정보로 수정
            ResultSet result = statement.executeQuery(sql);

            if (result.next()) {
                // 데이터 가져와 세션 속성에 저장
                float temperatureValue = result.getFloat("temperature");
                float humidityValue = result.getFloat("humidity");
                int dustValue = result.getInt("dust");
                String timeValue = result.getString("time");

                session.setAttribute("temperatureValue", temperatureValue);
                session.setAttribute("humidityValue", humidityValue);
                session.setAttribute("dustValue", dustValue);
                session.setAttribute("timeValue", timeValue);
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
    %>
</body>
</html>
