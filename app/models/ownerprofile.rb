class Ownerprofile < ApplicationRecord
  # Direct associations

  has_many   :responses,
             :foreign_key => "owner_id",
             :dependent => :nullify

  belongs_to :owner

  # Indirect associations

  has_many   :restaurants,
             :through => :responses,
             :source => :restaurant

  # Validations

end
