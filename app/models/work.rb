class Work < ActiveRecord::Base
  attr_accessible :artist, :created_location, :current_location, :date, :medium, :file_name, :price, :title, :description

  validates :artist,			presence: true
  validates :title,  			presence: true
  validates :date, 	 	  	presence: true
  validates :price, 			presence: true
  validates :medium,			presence: true
  validates :file_name, 	presence: true
  validates :description, presence: true
  
end
