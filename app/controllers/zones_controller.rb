class ZonesController < ApplicationController

	def home
		render :home
	end

	def index
		@zones = Zone.order(created_at: :desc)
	end

	def show
		@zone = Zone.find params[:id]
	end

	
end
