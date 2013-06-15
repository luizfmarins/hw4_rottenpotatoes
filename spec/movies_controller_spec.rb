require 'spec_helper'

describe MoviesController, type: :controller do
  describe 'Find movies with same director' do
    it 'should' do
      movie = mock(Movie)
      movie.stub(:movies_with_same_director) { [] }
      Movie.stub(:find) { movie }
        
      Movie.should_receive(:find)
      movie.should_receive(:movies_with_same_director)
      
      post :find_movies_with_same_director
    end
  end
end