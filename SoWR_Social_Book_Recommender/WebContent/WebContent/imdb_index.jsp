
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Movie Info</title>
    <!-- Bootstrap core CSS -->
    <link href="https://bootswatch.com/4/cyborg/bootstrap.min.css" rel="stylesheet">

</head>

<body>
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">MovieInfo</a>
        </div>
    </div>
</nav>

<div class="container">
    <div class="jumbotron">
        <h3 class="text-center">Search For Any Movie</h3>
        <form id="searchForm">
            <input type="text" class="form-control" id="searchText" placeholder="Search Movie....">
        </form>
    </div>
</div>

<div class="container">
    <div id="movies" class="row"></div>
</div>


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script type="text/javascript" src="JS/main.js"></script>
</body>
</html>
