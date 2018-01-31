$(document).ready(() => {
    $('#searchForm').on('submit', (e) => {
        let searchText = $('#searchText').val();
        getMovies(searchText);
        e.preventDefault();
    });

});

function getMovies(searchText) { debugger;
    axios.get('https://api.themoviedb.org/3/search/movie?api_key=fa155f635119344d33fcb84fb807649b&query=' + searchText)
        .then((response) => {
            console.log(response);
            let movies = response.data.results;
            let output = '';
            $.each(movies, (index, movie) => {
                output += `
                   <div class="col-md-3">
                       <div class="well text-center">
                           <img src="http://image.tmdb.org/t/p/w185/${movie.poster_path}">
                           <h5>${movie.title}</h5>
                           <a onclick="movieSelected('${movie.id}')" class="btn btn-primary" href="#">Movie Details</a>
                       </div>
                   </div>
           `;
            })
            ;

            $('#movies').html(output);
        })

        .catch((err) => {
            console.log(err);
        })
    ;
}
function movieSelected(id) {
    sessionStorage.setItem('movieId',id);
    window.location = 'movie.jsp';
    return false;
}

function getMovie() {
    let movieId = sessionStorage.getItem('movieId');

    axios.get("https://api.themoviedb.org/3/search/movie?api_key=fa155f635119344d33fcb84fb807649b&query=" + movieId)
        .then((response) => {
            console.log(response);
            let movie = response.data;
            let output =`
        <div class="row">
          <div class="col-md-4">
            <img src="${movie.Poster}" class="thumbnail">
          </div>
          <div class="col-md-8>"
          <h2>${movie.Title}</h2>
          <ul class="list-group">
          <li class="list-group-item"><strong>Genre:</strong> ${movie.Genre} </li>
          <li class="list-group-item"><strong>Released:</strong> ${movie.Released} </li>
          <li class="list-group-item"><strong>Rated:</strong> ${movie.Rated} </li>
          <li class="list-group-item"><strong>IMDB Rating</strong> ${movie.imdbRating} </li>
          <li class="list-group-item"><strong>Director</strong> ${movie.Director} </li>
          <li class="list-group-item"><strong>Writer</strong> ${movie.Writer} </li>
          <li class="list-group-item"><strong>Actors</strong> ${movie.Actors} </li>
          </ul>
    `;

            $('#movie').html(output);
        })
        .catch((err) => {
            console.log(err);
        })
    ;
}
