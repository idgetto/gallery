class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :artist
      t.float :price
      t.datetime :date
      t.string :medium
      t.string :current_location
      t.string :created_location

      t.timestamps
    end
  end
end
