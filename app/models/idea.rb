class Idea < ActiveRecord::Base
  attr_accessible :body, :cat, :title, :user_id

  validates :title, presence: true, on: :create
  validates :body, presence: true, on: :create

  belongs_to :user

  
end
