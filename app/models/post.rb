class Post < ActiveRecord::Base
  validates :title, :presence => true
  belongs_to :user

  attr_accessible :message, :name, :title, :user_id
end
