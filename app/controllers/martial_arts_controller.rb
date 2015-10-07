class MartialArtsController < ApplicationController
	def home
		render :home
	end

	def index
		@martial_arts= MartialArt.order(created_at: :desc)
	end

	def show
		@martial_art = MartialArt.find params[:id];
	end

	
end
