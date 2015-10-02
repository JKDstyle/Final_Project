class MartialArt < ActiveRecord::Base
	has_many :martial_art_zones
	has_many :gim_martial_arts
	has_many :gims, through: :gim_martial_arts
	has_many :zones, through: :martial_art_zones

end
