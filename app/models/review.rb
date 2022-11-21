class Review < ApplicationRecord
  belongs_to(
    :movie,
    class_name: 'Movie',
    foreign_key: :movie,
    primary_key: :id
  )

end
