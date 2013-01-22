class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :message, :name, :title, :user_id
end
