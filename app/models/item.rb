class Item < ActiveRecord::Base
  STATUSES = ["", "started", "finished"]
  belongs_to :list
  has_and_belongs_to_many :labels

  validates_presence_of :name
end
