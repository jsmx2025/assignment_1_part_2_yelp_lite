class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :tag,
             :counter_cache => true

  has_many   :responses,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_many   :ratings,
             :through => :reviews,
             :source => :rating

  # Validations

end
