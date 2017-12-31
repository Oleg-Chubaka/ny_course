class Author < ActiveRecord::Base
  has_many :oleg_games #, dependent: :destroy
end