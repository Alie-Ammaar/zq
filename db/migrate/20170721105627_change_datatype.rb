class ChangeDatatype < ActiveRecord::Migration[5.1]
  def change
  	change_column :bills, :rate, :decimal
  end
end
