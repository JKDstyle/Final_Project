class MartialArtZone < ActiveRecord::Base
	belongs_to :zone
	belongs_to :martial_art
end
