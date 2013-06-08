class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def movies_with_same_director
    if director.nil? 
      return []
    end
    Movie.find_all_by_director(director)
  end
end
