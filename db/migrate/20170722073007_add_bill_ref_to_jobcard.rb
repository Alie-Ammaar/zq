class AddBillRefToJobcard < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobcards, :bill, foreign_key: true
  end
end
