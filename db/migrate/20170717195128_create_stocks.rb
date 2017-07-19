class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.text :paper_from
      t.string :paper_type
      t.integer :quantity
      t.integer :size

      t.timestamps
    end
  end
end
