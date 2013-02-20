class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :microposts
  validates :name, :length => {:maximum => 12}
  validates_presence_of :email
  validates_presence_of :name
end
