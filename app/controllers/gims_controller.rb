class GimsController < ApplicationController

	def home
		render :home
	end

	def index
		@gims = Gim.order(created_at: :desc)
	end

	def show
		@gim = Gim.find params[:id]
		
	end


end
