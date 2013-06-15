require 'spec_helper'

describe MoviesController, type: :controller do
  describe 'Find movies with same director' do
    it 'should call Movie.find and movie.movies_with_same_director' do
      movie = mock(Movie)
      movie.stub(:movies_with_same_director)
      movie.stub(:director) { 'Director 1' }
      Movie.stub(:find) { movie }
        
      Movie.should_receive(:find)
      movie.should_receive(:movies_with_same_director)
      
      post :find_movies_with_same_director
    end
    
    it 'should render find_movies_with_same_director, if movie has director' do
      movie = mock(Movie)
      movie.stub(:movies_with_same_director)
      movie.stub(:director) { 'Director 1' }
      Movie.stub(:find) { movie }
      
      post :find_movies_with_same_director
      response.should render_template('find_movies_with_same_director')
    end
    
    it 'should render movies, if movie has NO director' do
          movie = mock(Movie)
          movie.stub(:movies_with_same_director)
          movie.stub(:director)
          movie.stub(:title)
          Movie.stub(:find) { movie }
          
          post :find_movies_with_same_director
          response.should redirect_to('/movies')
        end
  end
end