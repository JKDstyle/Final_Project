class Zone < ActiveRecord::Base
	has_many :gim_zones
	has_many :gims, through: :gim_zones
end
