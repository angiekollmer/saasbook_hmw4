class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.find_same_director(id)
   # debugger
    movie = Movie.find(id)
    self.find_all_by_director(movie.director)
  end
end
