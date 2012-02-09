class Category < ActiveRecord::Base
  has_one :note
  validates :title, :presence => true
end
