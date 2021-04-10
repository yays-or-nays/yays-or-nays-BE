class HotTake < ApplicationRecord
  belongs_to :tag
  validates_presence_of :picture, :question
end
