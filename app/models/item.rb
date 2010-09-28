class Item < ActiveRecord::Base
  belongs_to :list
  has_many :labels

  validates_presence_of :name
end
