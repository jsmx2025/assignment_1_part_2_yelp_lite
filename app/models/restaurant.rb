class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :responses,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
