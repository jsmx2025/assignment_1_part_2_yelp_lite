class Userprofile < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  belongs_to :user,
             :class_name => "UserId"

  # Indirect associations

  # Validations

end
