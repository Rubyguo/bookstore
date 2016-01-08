class CreateBooksinlists < ActiveRecord::Migration
  def change
    create_table :booksinlists do |t|
      t.integer :booklist_id
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
