class AddBillingDetailsInJobcard < ActiveRecord::Migration[5.1]
  def change
  	add_column :jobcards, :plates, 		:integer
  	add_column :jobcards, :colors, 		:integer
  	add_column :jobcards, :prints, 		:integer
  	add_column :jobcards, :rate, 			:integer
  	add_column :jobcards, :total_bill,:bigint
  end
end
