class Team < ActiveRecord::Base
  has_many :best_players #, dependent: :destroy
end