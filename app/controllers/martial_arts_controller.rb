class MartialArtsController < ApplicationController
	def home
		render :home
	end

	def index
		@martial_arts= MartialArt.order(name: :asc)

	end

	def show
		@martial_art = MartialArt.find params[:id];
	end

	
end
