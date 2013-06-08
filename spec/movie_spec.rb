require 'spec_helper'

describe Movie do
  describe 'Find movies with same director' do
    it 'should return a list of movies with the same director' do
      movie = FactoryGirl.create(:movie, :director => 'Director 1')
      FactoryGirl.create(:movie, :director => 'Director 1')
      FactoryGirl.create(:movie, :director => 'Director 1')
      FactoryGirl.create(:movie, :director => 'Director 2')
      FactoryGirl.create(:movie, :director => 'Director 3')
      
      movie.movies_with_same_director.size.should eql(3)
    end
    it 'should return an empty list if the movie has no director' do
      FactoryGirl.create(:movie)
      movie = FactoryGirl.create(:movie, :director => nil)
      
      movie.movies_with_same_director.size.should eql(0)
    end
  end
end