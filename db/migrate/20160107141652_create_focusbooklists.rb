class CreateFocusbooklists < ActiveRecord::Migration
  def change
    create_table :focusbooklists do |t|
      t.integer :user_id
      t.integer :booklist_id

      t.timestamps null: false
    end
  end
end
