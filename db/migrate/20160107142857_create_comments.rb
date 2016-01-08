class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :book_id
      t.integer :user_id
      t.string :title
      t.text :content
      t.datetime :date
      t.integer :score

      t.timestamps null: false
    end
  end
end
