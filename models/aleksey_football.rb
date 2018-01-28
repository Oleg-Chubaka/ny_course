class AlekseyFootball < ActiveRecord::Base
  belongs_to :team
  has_and_belongs_to_many :best_player
  has_many :football_images
end