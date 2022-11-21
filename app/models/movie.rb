class Movie < ApplicationRecord
    has_many(
    :reviews,
    class_name: 'Review',
    foreign_key: :movie,
    primary_key: :movie
  )
  
  def self.search(term)
    if term
        Movie.where("actor LIKE ?", "%" + term + "%")
    else
        Movie.all
    end
  end

end
