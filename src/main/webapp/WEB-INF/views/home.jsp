<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <title>Home</title>
</head>

<body>

<div>
    <input id="charName" type="text">
    <button type="button" class="searchButton">검색</button>
</div>


<script src="/resources/jquery/jquery-3.6.1.min.js"></script>
<script>
    $('.searchButton').on('click', function () {
        const charName = $('#charName').val();

        console.log('응애' + charName);

        $.ajax('/char/'+ charName, {
            method: 'get',
            contentType: 'application/json',
            dataType: 'json',
            success: result => {
                console.log(result);
            }

        })
    });

</script>
</body>
</html>
