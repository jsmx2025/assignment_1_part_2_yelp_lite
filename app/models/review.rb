class Review < ApplicationRecord
  # Direct associations

  has_one    :rating,
             :dependent => :nullify

  belongs_to :restaurant,
             :counter_cache => true

  # Indirect associations

  # Validations

end
