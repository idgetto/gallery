class Work < ActiveRecord::Base
  attr_accessible :artist, :created_location, :current_location, :date, :medium, :price, :title

  validates :artist, presence: true
  validates :title,  presence: true
  validates :date,   presence: true
  validates :price,  presence: true
  validates :medium, presence: true
  
end
