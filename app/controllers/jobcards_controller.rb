class JobcardsController < ApplicationController
	before_action :authenticate_user!
	def index
		@jobcards = Jobcard.all
	end

	def new
		stock = Stock.find_by_id(params[:stock_id])
		@jobcard = stock.jobcards.new
	end

	def create

		@jobcard = Jobcard.new(jobcard_params)
		if @jobcard.save
			#redirect_to  new_bill_path 
			redirect_to stock_jobcard_path(@jobcard.stock_id, @jobcard.id)
		else
			render 'new'
		end
	end

	def show
		@jobcard = Jobcard.find(params[:id])
	end

	def edit
		@jobcard = Jobcard.find(params[:id])
	end

	private
		def jobcard_params
		params.require(:jobcard).permit(:dated, :press_name, :quantity_rim, :paper_type, :size, :article_num, :prints, :stock_id, :rate, :plates, :colors, :gramage)
	end
end
