<%--
  Created by IntelliJ IDEA.
  User: aru
  Date: 13.05.2021
  Time: 00:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session</title>

    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>
<jsp:include page="../common/header_v2.jsp"></jsp:include>
<%
    String user = (String) session.getAttribute("user");
    String userName = null;
    String sessionID = null;
    Cookie[] cookies = request.getCookies();
    if(cookies !=null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("user")) userName = cookie.getValue();
            if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
        }
    }
%>

<div class="card">
<%--  <div class="card-header">--%>
<%--  </div>--%>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <p>Nice to meet you, <%=userName%>! </p>
      <footer class="blockquote-footer"> your Session ID is <cite title="Source Title"><%=sessionID%></cite></footer>
    </blockquote>
  </div>
</div>

<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>

