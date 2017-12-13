class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :item
      t.boolean :complete

      t.timestamps
    end
  end
end
