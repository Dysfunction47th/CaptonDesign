<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 옷사이트 예제</title>
    <link rel="stylesheet" href="style1.css">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
	<script src="https://kit.fontawesome.com/c47106c6a7.js" crossorigin="anonymous"></script>
    <script src="js/ie.js"></script>
</head>

<body>

    <header>
        <div class="inner">
            <h1><a href="Test.jsp">showping</a></h1>
            
            <ul id="gnb">
            	<li><a href="Test.jsp"> 트랜드 </a></li>
                <li><a href="conn_cp.jsp">게시판</a></li>
                <li><a href="conn_gm.jsp">장바구니</a></li>

            </ul>

            <ul class="util">
                <li><a href="conn_hp.jsp">도움말</a></li>
                <li><a href="conn_mb.jsp">회원가입</a></li>
                <li><a href="conn_log.jsp">로그인</a></li>
            </ul>
        </div>
    </header>


    <figure>
        <video src="img/test.mp4" autoplay muted loop></video>
        <div class="inner">
            <h1>Showping</h1>
            <p>방문해 주셔서 감사합니다!<br>
                우리 사이트는 쇼핑물입니다. </p>
            <a href="https://search.shopping.naver.com/catalog/40989479788?&NaPm=ct%3Dlmx087cw%7Cci%3D609131e1b7bc4f37306b846abdf9f049a1ec76d8%7Ctr%3Dslcc%7Csn%3D95694%7Chk%3D5b8ab9fc93c65f191cc8523eea3e7bd5ad1c2047">Recommended product</a>
        </div>
    </figure>

    <section>
        <div class="inner">
            <h1>2023 Trends News</h1>
            <div class="wrap">
                <article>
                    <div class="pic">
                        <img src="img/test1.jpg" alt="1번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="#">테스트</a></h2>
                    <p>최신 트랜드 제품 가디건</p>
                </article>

                <article>
                    <div class="pic">
                        <img src="img/test2.jpg" alt="2번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="#">테스트</a></h2>
                    <p>최신 트랜드 제품 바지</p>
                </article>

                <article>
                    <div class="pic">
                        <img src="img/test3.jpg" alt="3번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="#">테스트</a></h2>
                    <p>최신 트랜드 제품 신발</p>
                </article>

                <article>
                    <div class="pic">
                        <img src="img/test4.jpg" alt="4번째 콘텐츠 이미지">
                    </div>
                    <h2><a href="#">테스트</a></h2>
                    <p>최신 트랜드 제품 세트</p>
                </article>
                
            </div>
        </div>
    </section>

    <footer>
        <div class="inner">
            <div class="upper">
                <h1>showping</h1>
                <ul>
                    <li><a href="">정책</a></li>
                    <li><a href="">파생 사이트들</a></li>
                    <li><a href="">사이트맵</a></li>
                </ul>
            </div>

            <div class="lower">
                <address>
                    문의하실 내용이 있으신 분들은 연락주세요.<br>
                    TEL : 000-000-0000 C.P : 010-1234-5678
                </address>
                <p>
                    Make by/2023/09/24
                </p>
            </div>
        </div>
    </footer>




</body>

</html>