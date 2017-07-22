class Stock < ApplicationRecord
	has_many :jobcards
	validates :paper_from, :paper_type, :quantity, :size, presence: true	
end
