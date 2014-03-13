class FlowersController < ApplicationController

	def index
		@flower = Flower.new
		@flowers = Flower.order(params[:order])
	end

	def new
		@flower = Flower.new
	end

	def create
		@flower = Flower.new(flower_params)
		@flower.save
		redirect_to root_path	
	end

	def destroy
		Flower.find(params[:id]).destroy
		redirect_to root_path
	end
	
	private
	
	def flower_params
		params.require(:flower).permit(:name, :color, :price, :date_of_cut)
	end

end

