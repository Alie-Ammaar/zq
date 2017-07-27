class Stock < ApplicationRecord
	has_many :jobcards
	validates :paper_from, :paper_type, :quantity, :size, presence: true	
	scope :check_size_and_paperType, ->(size, type) { where(size: size, paper_type: type) }
end
