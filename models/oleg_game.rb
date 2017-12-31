class OlegGame < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :categories
  has_many :game_images
end