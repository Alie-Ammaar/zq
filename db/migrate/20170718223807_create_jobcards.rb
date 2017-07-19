class CreateJobcards < ActiveRecord::Migration[5.0]
  def change
    create_table :jobcards do |t|
      t.datetime :dated
      t.string :press_name
      t.integer :quantity_rim
      t.string :size
      t.string :paper_type
      t.string :article_num
      t.integer :print_quantity
      t.references :stock

      t.timestamps
    end
  end
end
