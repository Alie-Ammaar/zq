class Jobcard < ApplicationRecord
	belongs_to :stock
	has_many :bills
	validates :press_name, :quantity_rim, :size, :paper_type, :article_num, :print_quantity, presence: true 
	before_save :change_quantity_of_jobcard_stock

	def change_quantity_of_jobcard_stock
		stock = self.stock
		stock_quantity = stock.quantity - self.quantity_rim
		stock.update_attributes(quantity: stock_quantity) 
		
	end
end
