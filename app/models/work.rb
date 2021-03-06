class Work < ActiveRecord::Base
  attr_accessible :artist, :created_location, :current_location, :date, :medium, :file_name, :price, :title, :description

  validates :artist,			presence: true
  validates :title,  			presence: true
  validates :date, 	 	  	presence: true
  validates :price, 			presence: true
  validates :medium,			presence: true
  validates :file_name, 	presence: true
  

	def next
		Work.first(conditions: ['id > ?', self.id], order: 'id ASC')
	end

	def previous
		Work.last(conditions: ['id < ?', self.id], order: 'id ASC')
	end
  
end
