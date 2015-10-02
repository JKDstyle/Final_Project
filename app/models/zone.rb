class Zone < ActiveRecord::Base
	has_many :martial_art_zones
	has_many :gim_zones
	has_many :gims, through: :gim_zones
	has_many :martial_arts, through: :martial_art_zones
end
