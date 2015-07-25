<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
	<title>ログイン</title>
</head>
<body bgcolor="#40AAEF">

<h1>ユーザは2種類あります。</h1>
<ul>
<li>ID:admin</li>
<li>PW:admin</li>
</ul>

<ul>
<li>ID:user</li>
<li>PW:user</li>
</ul>

<form name="f" action="<c:url value='j_spring_security_check'/>" method="post">
ログインID : <input type="text" name="username">
<br/>
ログインPW : <input type="password" name="password">
<br/>
<input type="submit" name="login" value="ログイン">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
</form>

</body>
</html>
