class AddIndexToWorks < ActiveRecord::Migration
  def change
    add_index :works, :id 
  end
end
