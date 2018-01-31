<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <jsp:include page="links_import.jsp" />
   <title>SoWR</title>

</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container">
    <main class="main">
        <div class="jumbotron">
            <h1 class="display-4">Social Book Recommender</h1>
            <img src="https://katrinagermeinauthor.files.wordpress.com/2016/02/book-1110648_1920.png" width="70px" height="70px">
            <br/>
            <p class="lead">Your virtual friend that which suggests you book titles only when you ask for it. It analyses your current favorite books and it finds other similar ones which we know you will like!</p>
        <p><jsp:include page="popover.jsp"/></p>
            <p class="lead">Or choose from our collections</p>

        </div>
    </main>
</div>
</body>
</html>
