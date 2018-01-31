<html>
<head>
    <link href="https://bootswatch.com/4/cyborg/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="CSS/style.css">
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-default">
    <div  class="container">
        <div class="navbar-default">
            <a class="navbar-brand" href="imdb_index.jsp">MovieInfo</a>
        </div>
    </div>
</nav>
<div class="container">
    <div id="movie" class="well"></div>
</div>
<script
        src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous">
</script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="JS/main.js"></script>
<script>
    getMovie();
</script>

</body>

</html>
