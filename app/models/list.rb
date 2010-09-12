class List < ActiveRecord::Base
  belongs_to :user
  has_many :items
  #Code here
end
