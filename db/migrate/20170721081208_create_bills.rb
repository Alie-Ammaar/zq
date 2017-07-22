class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.integer :num_of_plates
      t.integer :num_0f_colors
      t.decimal :rate

      t.timestamps
    end
  end
end
