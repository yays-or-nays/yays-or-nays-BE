class Tag < ApplicationRecord
  has_many :hot_takes
  validates_presence_of :category
end