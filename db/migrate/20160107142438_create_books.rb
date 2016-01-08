class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :book_type
      t.string :author
      t.string :words_num
      t.string :source
      t.text :bookintro
      t.string :cover_path

      t.timestamps null: false
    end
  end
end
