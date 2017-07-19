class StocksController < ApplicationController
	def new
		@stock = Stock.new
	end
	def create
		@stock = Stock.new(stock_params)
		if @stock.save
			redirect_to stock_path(@stock)
		else
			render 'new'
		end
	end
	def show
		 @stock = Stock.find(params[:id])
	end
	def edit
		@stock = Stock.find(params[:id])
	end
	def index
		@stock = Stock.all
	end
	private
		def stock_params
			params.require(:stock).permit(:paper_from, :paper_type, :quantity, :size)
		end
end
