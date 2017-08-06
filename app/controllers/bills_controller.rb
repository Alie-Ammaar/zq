class BillsController < ApplicationController

  def new
    
    stock = Stock.find_by_id(params[:stock_id])
  	jobcard = Jobcard.find_by_id(params[:jobcard_id])
    @bill = stock.jobcards.bills.new
  end
  
  def create
	  @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to  bill_path(@bill)
    else
      render 'new'
    end 
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def index
    @bill = Bill.all  
  end

  private
  def bill_params
  	params.require(:bill).permit(:num_of_plates, :num_0f_colors, :rate	)
  end
end
