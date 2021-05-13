<%--
  Created by IntelliJ IDEA.
  User: aru
  Date: 11.05.2021
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>

<header>
	<nav class="navbar navbar-expand-md navbar-dark"
		style="background-color: tomato">
		<div>
			<a href="" class="navbar-brand"> Simple Java EE Final App</a>
		</div>

		<ul class="navbar-nav navbar-collapse justify-content-end">
			<li><a href="<%= request.getContextPath() %>/login" class="nav-link">Login</a></li>
			<li><a href="<%= request.getContextPath() %>/register" class="nav-link">Signup</a></li>
		</ul>
	</nav>
</header>
