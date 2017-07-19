class JobcardsController < ApplicationController
	def new
		binding.pry
		stock = Stock.find_by_id(params[:stock_id])
		@jobcard = stock.jobcards.new
	end
	def create
		@jobcard = Jobcard.new(jobcard_params)
		if @jobcard.save
			redirect_to jobcard_path(@jobcard)
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
		params.require(:jobcard).permit(:dated, :press_name, :quantity_rim, :paper_type, :size, :article_num, :print_quantity)
	end
end
