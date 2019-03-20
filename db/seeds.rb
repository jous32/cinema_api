Booking.create!([
  {person_id: 1, function_id: 1},
  {person_id: 1, function_id: 1},
  {person_id: 1, function_id: 1},
  {person_id: 1, function_id: 1}
])
Function.create!([
  {displayed_at: "2019-01-01", movie_id: 1},
  {displayed_at: "2019-01-02", movie_id: 1},
  {displayed_at: "2019-01-03", movie_id: 1},
  {displayed_at: "2019-01-04", movie_id: 2},
  {displayed_at: "2019-01-05", movie_id: 2},
  {displayed_at: "2019-01-06", movie_id: 3}
])
Movie.create!([
  {name: "Movie 1", description: "A movie of terror", image_url: "http://www...."},
  {name: "Movie 2", description: "A thriller movie", image_url: "http://www...."},
  {name: "Movie 3", description: "A romance movie", image_url: "http://www...."}
])
Person.create!([
  {name: "Peter", email: "peter@email.com", national_id: "1039"},
  {name: "Ana", email: "ana@email.com", national_id: "1038"}
])
