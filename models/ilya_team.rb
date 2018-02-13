class IlyaTeam < ActiveRecord::Base
  has_many :partners
  has_many :divisions
end