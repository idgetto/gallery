class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :artist
      t.float  :decimal
      t.date   :date
      t.string :medium
      t.string :file_name
      t.string :current_location
      t.string :created_location

      t.timestamps
    end
  end
end
