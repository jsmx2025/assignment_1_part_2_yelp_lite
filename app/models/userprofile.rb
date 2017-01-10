class Userprofile < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :class_name => "UserId"

  # Indirect associations

  # Validations

end
