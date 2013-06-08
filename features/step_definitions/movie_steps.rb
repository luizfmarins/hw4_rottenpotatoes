Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  index_1 = page.body.index(e1)
  index_2 = page.body.index(e2)
  assert index_1 < index_2
end

Then /the director of "([^"]*)" should be "([^"]*)"/ do |movie_title, director|
  movie = Movie.find_by_title(movie_title)
  assert movie.director = director
end