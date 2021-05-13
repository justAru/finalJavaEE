<%--
  Created by IntelliJ IDEA.
  User: aru
  Date: 3/15/21
  Time: 00:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Calculator</title>
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

    <style type="text/css">
      .panel {
        width: 110%;
      }
      .panel-body {
        padding: 10px;
      }

      body {
    background-color: #d8ddd5;
}

table {
    top: 400px;
    margin: auto;
    width: 295px;
    max-width: 295px;
    height: 345px;
    max-height: 345px;
    background-color: dimgrey;
    text-align: center;
    border-radius: 2px;
    padding-right: 10px;
}

input {
    outline: 0;
    position: relative;
    left: 5px;
    top: 5px;
    border: 0 solid #010101;
    border-radius: 4px;
    color: #010101;
    background-color: lightblue;
    width: 60px;
    height: 50px;
    float: left;
    font-size: 18px;
    box-shadow: 0 4px #b0d2;
    margin: 5px 5px 20px;
}

input:hover {
    font-size: 22px;
}

input:active {
    top: 3px;
    margin: 0 5px -5px;
    font-size: 20px;
    box-shadow: none;
}

#display {
    outline: 0;
    float: left;
    position: relative;
    width: 275px;
    height: 50px;
    margin: 15px 10px 10px;
    background-color: lightblue;
    box-shadow: none;
    font-size: 26px;
    text-align: right;
}

#display:active {
    text-align: right;
    margin: 18px 10px 8px;
}

.operator {
    position: relative;
    background-color: darkorange;
    font-size: 28px;
    text-align: center;
}

.operator:hover {
    background-color: darkorange;
    font-size: 32px;
}

.operator:active {
    top: 3px;
    font-size: 28px;
    box-shadow: none;
}

#clear {
    float: left;
    position: relative;
    display: block;
    background-color: darkorange;
}

#clear:hover {
    background-color: darkorange;
}

#clear:active {
    top: 4px;
    box-shadow: none;
}
    </style>

</head>
<body>
<jsp:include page="../common/header_v2.jsp"></jsp:include>

<br><br><br>
<form name="calculator" action="CalculatorServlet" method="post">
    <table>
        <tr>
            <td colspan="4">
                <div typeof="text" id="display">${result}</div>
            </td>
        </tr>
        <tr>
            <td><input type="submit" name="1" value="1">
            <td><input type="submit" name="2" value="2">
            <td><input type="submit" name="3" value="3">
            <td><input type="submit" class="operator" name="+" value="+">
        </tr>
        <tr>
            <td><input type="submit" name="4" value="4">
            <td><input type="submit" name="5" value="5">
            <td><input type="submit" name="6" value="6">
            <td><input type="submit" class="operator" name="-" value="-">
        </tr>
        <tr>
            <td><input type="submit" name="7" value="7">
            <td><input type="submit" name="8" value="8">
            <td><input type="submit" name="9" value="9">
            <td><input type="submit" class="operator" name="*" value="x">
        </tr>
        <tr>
            <td><input type="submit" id="clear" name="C" value="C">
            <td><input type="submit" name="0" value="0">
            <td><input type="submit" name="=" value="=">
            <td><input type="submit" class="operator" name="/" value="/">
        </tr>
    </table>
</form>

<br><br><br>
<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>
