class Pioneer < ActiveRecord::Base
  has_many :solar_system_objects #, dependent: :destroy
  has_many :pioneer_images
end