class Gim < ActiveRecord::Base
	has_many :gim_martial_arts
	has_many :martial_arts, through: :gim_martial_arts
	has_many :gim_zones
	has_many :zones, through: :gim_zones
end
