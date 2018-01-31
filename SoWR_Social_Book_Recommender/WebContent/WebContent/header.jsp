<jsp:include page="links_import.jsp"/>
<div class="container">
    <header class="header clearfix">
        <nav>
            <ul class="nav nav float-right">
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="collection.jsp">Collections</a>
                </li>
                <li>
                    <form class="form-inline my-2 my-lg-0" action="database-connect-response.jsp" method="post">
                        <input class="form-control mr-sm-2" type="text" name="search" placeholder="search" aria-label="textarea">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </li>
            </ul>
        </nav>
        <h3 class="text-muted">SoWR</h3>
    </header>
</div>