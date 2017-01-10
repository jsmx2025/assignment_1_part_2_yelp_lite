class Userprofile < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  belongs_to :user,
             :class_name => "UserId"

  # Indirect associations

  has_many   :restaurants,
             :through => :reviews,
             :source => :restaurant

  has_many   :ratings,
             :through => :reviews,
             :source => :rating

  # Validations

end
