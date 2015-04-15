class Idea < ActiveRecord::Base
  attr_accessible :body, :cat, :title, :user_id

  belongs_to :user

  
end
