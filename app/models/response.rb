class Response < ApplicationRecord
  # Direct associations

  belongs_to :review

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
