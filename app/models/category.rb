class Category < ActiveRecord::Base
  has_many :photos
  bas_many :articles
  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('name')
end
