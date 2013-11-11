require 'spec_helper'

# spec/models/movie_spec.rb:

describe Movie do
  fixtures :movies
  it 'should find movies with same director' do
    #debugger
    movie = movies(:milk_movie)
    movieList = Movie.find_same_director(movie.id)
    movieList.should include(movies(:milk_movie))
    movieList.should include(movies(:cereal_movie))
    movieList.should include(movies(:cookies_movie))
  end
end
