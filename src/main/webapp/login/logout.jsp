<%--
  Created by IntelliJ IDEA.
  User: aru
  Date: 13.05.2021
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout</title>
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<jsp:include page="../common/header_v2.jsp"></jsp:include>
<%
    String userName = null;
//allow access only if session exists
    if(session.getAttribute("user") == null){
        response.sendRedirect("login/login.jsp");
    }else userName = (String) session.getAttribute("user");
    String sessionID = null;
    Cookie[] cookies = request.getCookies();
    if(cookies !=null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("user")) userName = cookie.getValue();
        }
    }
%>
<div class="container col-md-8 col-md-offset-3" style="overflow: auto">
<form action="<%=request.getContextPath()%>/logout" method="post">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Hi <%=userName %>, do you want to logout?</h5>
    <p class="card-text">On exit, we automatically invalidate the session.</p>
    <button type="submit" class="btn btn-primary">Logout</button>
  </div>
</div>
</form>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
