class AddGramageInJobcards < ActiveRecord::Migration[5.1]
  def change
  	add_column :jobcards, :gramage, :integer
  end
end
