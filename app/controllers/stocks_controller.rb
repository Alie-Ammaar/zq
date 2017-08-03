class StocksController < ApplicationController
	before_action :authenticate_user!
	# before_action :check_size_paperType, only:[:create]
	
	def index
		@stock = Stock.all
	end

	def new
		@stock = Stock.new
	end
	def create
		@stock = Stock.new(stock_params)
		if @stock.save
			redirect_to stocks_path
		else
			render 'new'
		end
	end
	def show
		 @stock = Stock.find_by_id(params[:id])
	end
	def edit
		@stock = Stock.find_by_id(params[:id])
	end

	def update
		@stock = Stock.find(params[:id])
		if @stock.update(stock_params)
			flash[:success] = "Stock updated successfully"
			redirect_to stock_path(@stock)
		else
			render 'edit'
		end	
	end



	# def check_size_paperType
	# 	exist_stock = stock.check_size_and_paperType(params[:size.to_i,params[:paper_type]])	
	# 	exist_stock.present?
	# end

	private
		def stock_params
			params.require(:stock).permit(:paper_from, :paper_type, :quantity, :size, :gramage)
		end
end
