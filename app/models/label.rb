class Label < ActiveRecord::Base
  has_and_belongs_to_many :items

  validates_presence_of :name
  validates_presence_of :color
  validates_format_of :color, :with => /^(\d|[a-f]|[A-F])+$/
end
