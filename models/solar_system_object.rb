class SolarSystemObject < ActiveRecord::Base
  belongs_to :pioneer #, dependent: :destroy
  has_many :solar_system_object_images
end