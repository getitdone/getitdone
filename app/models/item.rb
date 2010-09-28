class Item < ActiveRecord::Base
  belongs_to :list
  has_and_belongs_to_many :labels

  validates_presence_of :name
end
