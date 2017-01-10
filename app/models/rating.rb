class Rating < ApplicationRecord
  # Direct associations

  belongs_to :review

  # Indirect associations

  has_one    :userprofile,
             :through => :review,
             :source => :userprofile

  has_one    :restaurant,
             :through => :review,
             :source => :restaurant

  # Validations

end
