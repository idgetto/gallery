class Work < ActiveRecord::Base
  attr_accessible :artist, :created_location, :current_location, :date, :medium, :price, :title
end
