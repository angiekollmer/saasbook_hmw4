Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
  Movie.create!(movie)
  end
end

#Given /^(?:|I )go to the edit page for (.+)$/ do |movie_name|
#  movie =  Movie.find_by_title(movie_name)
#  visit path_to(edit_movie_path(movie))
#end


Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  #debugger
  Movie.find_by_title(arg1).director.should == arg2
end

