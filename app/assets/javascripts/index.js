$(document).ready(function() {
  getPeople();
})

function getPeople() {
  $.ajax({
    url: 'http://localhost:3000/people',
    method: "GET",
  }).done(function(result){
    if (result.length === 0) {
      $('.result').append("<h3>You haven't added anyone yet!</h3>")
    } else {
      for (var i = 0; i < result.length; i++) {
        $('.result').append(`<h3>Name: ${result[i].name}</h3> <h3>Favorite City: ${result[i].favoriteCity}</h3><br />`)
      };
    }

  })
}
