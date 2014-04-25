class Article < ActiveRecord::Base
	#Relationships
	belongs_to :category

	#validations
	validates_presence_of :title, :content

	#scopes
	scope :active, where('active = ?', true)
	scope :alphabetical, order('title')
end
