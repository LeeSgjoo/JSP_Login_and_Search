<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--  만일 한글이 깨진다면 사용 => <%request.setCharacterEncoding("UTF-8");%>    --%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
    <jsp:useBean id = "user" class = "org.example.toy_login.userInfo" scope = "session"/>
<%--    // 현재 페이지에서만 쓸 것이라면 scope를 지정하지 않아도 되지만 여러 페이지에 걸쳐 전체에서 사용하기 위해 session으로 scope를 지정해줬다.--%>
    <jsp:setProperty property = "*" name = "user"/>
<%--    // form에서 input으로 가져온 name에 일치하는 객체로 넘어온 정보들이 모두 자동으로 세팅된다.--%>

    <h1>Login Info</h1><br>
    User ID: <jsp:getProperty property = "name" name = "user"/>
    Password: <jsp:getProperty name="user" property="password"/>

    <p>input 태그의 name 속성이 userInfo 클래스의 프로퍼티 이름(name, password)과 완벽하게 일치해야 "jsp: setProperty"가 작동합니다.</p>
    <a href = welcome.jsp>Welcome page!!</a>
</body>
</html>