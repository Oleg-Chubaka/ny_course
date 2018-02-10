class BestPlayer < ActiveRecord::Base
  belongs_to :team #, dependent: :destroy
  has_one :best_player_image
end