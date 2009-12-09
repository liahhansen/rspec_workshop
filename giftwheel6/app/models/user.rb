class User < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :position
  validates_presence_of :wish_list
  validates_presence_of :image
end
