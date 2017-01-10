class Review < ApplicationRecord
  mount_uploader :photos, PhotoUploader

  # Direct associations

  belongs_to :userprofile,
             :counter_cache => true

  has_many   :responses,
             :dependent => :destroy

  has_one    :rating,
             :dependent => :nullify

  belongs_to :restaurant,
             :counter_cache => true

  # Indirect associations

  # Validations

end
