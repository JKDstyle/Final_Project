class MartialArt < ActiveRecord::Base
	has_many :gim_martial_arts
	has_many :gims, through: :gim_martial_arts

end
