<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <title>Home</title>
</head>
<body>

<div>
    <label> 닉네임 </label>
    <p> ${item.name}</p>
</div>
<div>
    <label> 서버 </label>
    <p> ${item.server} </p>
</div>
<div>
    <label> 직업 </label>
    <p> ${item.job} </p>
</div>
<div>
    <p> ${item.level} </p>
</div>
<div>
    <label> 칭호 </label>
    <p> ${item.infoTitle} </p>
</div>


</body>
</html>
