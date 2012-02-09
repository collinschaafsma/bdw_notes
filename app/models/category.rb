class Category < ActiveRecord::Base
  has_one :note
  validates :name, :presence => true
end
