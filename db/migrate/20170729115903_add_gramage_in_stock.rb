class AddGramageInStock < ActiveRecord::Migration[5.1]
  def change
  	add_column :stocks, :gramage, :integer
  end
end
