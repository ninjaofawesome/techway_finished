class Review < ActiveRecord::Base
  attr_accessible :name, :email, :review, :active
  belongs_to :client


  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX } 
end