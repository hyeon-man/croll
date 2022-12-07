$('#searchButton').on('click', function () {
        console.log('12312313')
        const xmlHttpRequest = new XMLHttpRequest();
        xmlHttpRequest.open("POST", "http://developer-lostark.game.onstove.com/markets/items", true);
        xmlHttpRequest.setRequestHeader('accept', 'application/json');
        xmlHttpRequest.setRequestHeader('authorization', 'bearer {eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6IktYMk40TkRDSTJ5NTA5NWpjTWk5TllqY2lyZyIsImtpZCI6IktYMk40TkRDSTJ5NTA5NWpjTWk5TllqY2lyZyJ9.eyJpc3MiOiJodHRwczovL2x1ZHkuZ2FtZS5vbnN0b3ZlLmNvbSIsImF1ZCI6Imh0dHBzOi8vbHVkeS5nYW1lLm9uc3RvdmUuY29tL3Jlc291cmNlcyIsImNsaWVudF9pZCI6IjEwMDAwMDAwMDAwMDA1MDQifQ.AoP-2Q-vVzORjuOf_kpWDcU1MAHa1TAHppO1JRHJjIVguKxaP3OJaAaMerX5sf0CzSwO9BscFiBzFY3rbPA6-wyYsZq6A5KFhcciKx5ERGpSxDw5RxPTE0IZuhP-CFNw0l9jfFar1_RJlah7Pc_Yq-i5MxKbxJBuaYZWhx-_2suHquIgNSwAUwoS0kxZH__22PX3C_oqbgg7UPRJzDABcwAeVsEqWP1-nhwPQW6Y0K3jzP_bbauRGtMc4TZlaya47wQYHvZ35DSiTNf0c873xw5s-p7IkG8JmrjV0nRpTxFYJpi9TwzSATh8bMuHo0UUmwG155J9VClvsVijOBthJQ}');
        xmlHttpRequest.setRequestHeader('content-Type', 'application/json');
        xmlHttpRequest.onreadystatechange = () => {
        };
        xmlHttpRequest.send(JSON.stringify({"CategoryCode": 20000}));

    }
);
