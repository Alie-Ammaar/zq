class Jobcard < ApplicationRecord
	belongs_to :stock
	has_one :bill
	validates :press_name, :quantity_rim, :size, :paper_type, :article_num, :print_quantity, presence: true 
end
