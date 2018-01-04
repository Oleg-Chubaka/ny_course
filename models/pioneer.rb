class Pioneer < ActiveRecord::Base
  has_many :solar_system_objects #, dependent: :destroy
end