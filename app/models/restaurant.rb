class Restaurant < ApplicationRecord
  before_validation :geocode_address

  def geocode_address
    if self.address.present?
      url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.encode(self.address)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.address_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.address_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.address_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  mount_uploader :cover_photo, CoverPhotoUploader

  # Direct associations

  belongs_to :tag,
             :counter_cache => true

  has_many   :responses,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_many   :owners,
             :through => :responses,
             :source => :owner

  has_many   :userprofiles,
             :through => :reviews,
             :source => :userprofile

  has_many   :ratings,
             :through => :reviews,
             :source => :rating

  # Validations

end
