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

<div class="name">
    <p></p>
</div>

<div class="infoTitle">
    <p></p>
</div>

<div class="level">
    <p></p>
</div>

<div class="server">
    <p></p>
</div>

<div class="job">
    <p></p>
</div>

<button id="searchButton">123</button>


<script src="/resources/jquery/jquery-3.6.1.min.js"></script>
<script src="/resources/js/home.js"></script>
<script>


    $('#searchButton').on('click', function () {
        $.ajax({
            url: 'https://developer-lostark.game.onstove.com/guilds/rankings?serverName=%EB%A3%A8%ED%8E%98%EC%98%A8',
            header:{
                'authorization': 'bearer' +'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6IktYMk40TkRDSTJ5NTA5NWpjTWk5TllqY2lyZyI' +
                    'sImtpZCI6IktYMk40TkRDSTJ5NTA5NWpjTWk5TllqY2lyZyJ9.eyJpc3MiOiJodHRwczovL2x1ZHkuZ2FtZS5vbnN0b3ZlLmNvbSIsIm' +
                    'F1ZCI6Imh0dHBzOi8vbHVkeS5nYW1lLm9uc3RvdmUuY29tL3Jlc291cmNlcyIsImNsaWVudF9pZCI6IjEwMDAwMDAwMDAwMDA1MDQifQ.AoP' +
                    '-2Q-vVzORjuOf_kpWDcU1MAHa1TAHppO1JRHJjIVguKxaP3OJaAaMerX5sf0CzSwO9BscFiBzFY3rbPA6-wyYsZq6A5KFhcciKx5ERGpSxDw5RxP' +
                    'TE0IZuhP-CFNw0l9jfFar1_RJlah7Pc_Yq-i5MxKbxJBuaYZWhx-_2suHquIgNSwAUwoS0kxZH__22PX3C_oqbgg7UPRJzDABcwAeVsEqWP1-nhwP' +
                    'QW6Y0K3jzP_bbauRGtMc4TZlaya47wQYHvZ35DSiTNf0c873xw5s-p7IkG8JmrjV0nRpTxFYJpi9TwzSATh8bMuHo0UUmwG155J9VClvsVijOBthJQ'
                    'accept' : 'application/json'
            },
            method :'GET',
            dataType: 'jsonp',
            success: function (res) {
                console.log(res)
            }
        })
    });


</script>
</body>
</html>
