class Response < ApplicationRecord
  # Direct associations

  belongs_to :owner,
             :class_name => "Ownerprofile"

  belongs_to :review

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
