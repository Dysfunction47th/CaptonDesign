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
        String url = "jdbc:mariadb://192.168.40.94:3306/cameratime"; // 자신의 데이터베이스 정보로 수정
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
        String sql = "SELECT time FROM data"; // 자신의 테이블 정보로 수정
        ResultSet result = statement.executeQuery(sql);

        // 배열을 사용하여 데이터 저장
        ArrayList<String> CameraTimeValues = new ArrayList<>();

        while (result.next()) {

            String timeValue = result.getString("time");

            // 데이터를 배열에 추가

            CameraTimeValues.add(timeValue);
        }

        // 배열 크기를 5로 유지
        if ( CameraTimeValues.size() > 5) {

            CameraTimeValues.subList(0, CameraTimeValues.size() - 5).clear();
        }

        // 데이터를 로컬 스토리지에 저장
        for (int i = 0; i <  CameraTimeValues.size(); i++) {
            int index = i + 1;

        %>
        <script>
            console.log("timeValue", "<%= CameraTimeValues.get(i) %>");

            localStorage.setItem("timeValue<%= index %>", "<%= CameraTimeValues.get(i) %>");
        </script>
        <%
        }

        // 연결 종료
        result.close();
        statement.close();
        connection.close();
        
        %>
        <script type="text/javascript">
        // window.location.href = "http://localhost:8080/JSP2/CaptonDesign/front/tempPage.jsp";
        window.location.href = "./src/main/webapp/front/cameraPage.jsp";
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
