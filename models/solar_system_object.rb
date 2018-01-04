class SolarSystemObject < ActiveRecord::Base
  belongs_to :pioneer #, dependent: :destroy
end