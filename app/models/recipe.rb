class Recipe < ActiveRecord::Base
  belongs_to :meal
  has_attached_file :picture
end
