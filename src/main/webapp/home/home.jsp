<%--
  Created by IntelliJ IDEA.
  User: aru
  Date: 13.05.2021
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Home</title>

<%--    <link rel="stylesheet"--%>
<%--	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"--%>
<%--	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"--%>
<%--	crossorigin="anonymous">--%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">

</head>
<body>
<jsp:include page="../common/header_v2.jsp"></jsp:include>

<%--<h3>Home Page</h3>--%>

<%--      This is Simple web application using jsp, servlets, filters, session, jdbc, flyway, error exception and etc. <br><br>--%>
<%--      <b>It includes the following functions:</b>--%>
<%--      <ul>--%>
<%--          <li>Login</li>--%>
<%--          <li>Register</li>--%>
<%--          <li>ToDo App</li>--%>
<%--          <li>Calculator</li>--%>
<%--      </ul>--%>
<br>
<div class="card-columns">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">About project</h5>
      <p class="card-text">This is Simple web application using jsp, servlets, filters, session,
        jdbc, flyway, error exception and etc.</p>
    </div>
  </div>
  <div class="card p-3">
    <blockquote class="blockquote mb-0 card-body">
      <p>This application is designed to provide online services such as counting using a calculator and making notes.</p>
      <footer class="blockquote-footer">
        <small class="text-muted">
          For what you can use it
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Login and Register</h5>
      <p class="card-text">Login and registration are carried out through the corresponding jsp files, from where the information is sent to the corresponding servlets and processed.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card bg-primary text-white text-center p-3">
    <blockquote class="blockquote mb-0">
      <p>The data is stored in a special database, where at the moment there are two tables (respectively, the model: user and lists).</p>
      <footer class="blockquote-footer">
        <small>
          Database <cite title="Source Title">connection</cite>
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card text-center">
    <div class="card-body">
      <h5 class="card-title">Session</h5>
      <p class="card-text">Session is a conversional state between client and server and it can consists
        of multiple request and response between client and server. Since HTTP and Web Server both
        are stateless, the only way to maintain a session is when some unique information about the
        session (session id) is passed between server and client in every request and response.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card">
  </div>
  <div class="card p-3 text-right">
    <blockquote class="blockquote mb-0">
      <p>Java Servlet Filter is used to intercept the client request and do some pre-processing.
        It can also intercept the response and do post-processing before sending to the client in web
        application. This is the fourth article in the series of Web Applications Tutorial, you might
        want to check out earlier articles too.</p>
      <footer class="blockquote-footer">
        <small class="text-muted">
          About <cite title="Source Title">filters</cite>
        </small>
      </footer>
    </blockquote>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Flayway</h5>
      <p class="card-text">Flyway is an open-source database migration tool. It strongly
        favors simplicity and convention over configuration. It is based around just 7 basic commands:
        Migrate, Clean, Info, Validate, Undo, Baseline and Repair.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
</div>

<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
