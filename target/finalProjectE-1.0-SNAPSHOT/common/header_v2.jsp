<%--
  Created by IntelliJ IDEA.
  User: aru
  Date: 13.05.2021
  Time: 00:03
  To change this template use File | Settings | File Templates.
--%>
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="" class="navbar-brand"> Simple Java EE Final App</a>
			</div>

            <ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/home"
					class="nav-link">Home</a></li>
			</ul>

            <ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/calculator"
					class="nav-link">Calculator</a></li>
			</ul>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Todos</a></li>
			</ul>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/loginSuccess"
					class="nav-link">Get sessionID</a></li>
			</ul>

			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li><a href="<%=request.getContextPath()%>/logout"
					class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>