class CreateBookselves < ActiveRecord::Migration
  def change
    create_table :bookselves do |t|
      t.integer :user_id
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
