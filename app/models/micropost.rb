class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user
  validates :content, :length => {:maximum => 140}
  validates_numericality_of :user_id
  validates_presence_of :content
  validates_presence_of :user_id
end
