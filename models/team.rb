class Team < ActiveRecord::Base
  has_many :best_players #, dependent: :destroy
  has_one :team_image
end