class CreateBooklists < ActiveRecord::Migration
  def change
    create_table :booklists do |t|
      t.integer :user_id
      t.string :title
      t.string :bl_type
      t.text :intro

      t.timestamps null: false
    end
  end
end
