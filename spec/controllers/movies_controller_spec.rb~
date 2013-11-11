require 'spec_helper'

describe MoviesController do
  
  describe 'Adding Director' do
    it 'should update the attributes!' do
      movie = FactoryGirl.create(:movie, :title => 'Milk', :rating => 'R')
 # debugger
      put :update, :id => movie.id, 
        :movie=>{"title"=>"Mermaid", "rating"=>"G", "director"=>"Angie Kollmer", "release_date(1i)"=>"2013", "release_date(2i)"=>"11", "release_date(3i)"=>"10"}

      dbmovie = Movie.find(movie.id)      
      dbmovie.director.should == "Angie Kollmer"
      dbmovie.title.should == "Mermaid"

   end
  end

  describe 'Find Similar Movies When Director Not Blank' do
    it 'should call the model method that performs the similar search' do
      movie = FactoryGirl.create(:movie)
      Movie.should_receive(:find_same_director).with(movie.id.to_s)
      #debugger
      put :similar, :id => movie.id
    end
    it 'should select the Home template for rendering' do
      Movie.stub(:find_same_director)
      put :similar, :id => 1
      response.should render_template('similar')
    end
    it 'should add "movie title" has no director info to flash' do
      fake_results = [mock('Movie'), mock('Movie')]
      Movie.stub(:find_same_director).and_return(fake_results)
      put :similar, :id => 1
      assigns(:movies).should == fake_results
    end
  end

#  describe 'Return to Home When Director is Blank' do
#    it 'should not call the model method that performs the similar search' do
#      movie = movies(:doc_movie)
#      Movie.should_receive(:find_same_director).with("1")
      #debugger
#      put :similar, :id => 1
#    end
#    it 'should select the Similar Movies template for rendering' do
#      Movie.stub(:find_same_director)
 #     put :similar, :id => 1
#      response.should render_template('similar')
#    end
#    it 'should make the similar search results available to that template' do
#      fake_results = [mock('Movie'), mock('Movie')]
#      Movie.stub(:find_same_director).and_return(fake_results)
#      put :similar, :id => 1
#      assigns(:movies).should == fake_results
#    end
#  end

end
