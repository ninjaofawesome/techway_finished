class Client < ActiveRecord::Base
  attr_accessible :description, :email, :name, :phone_number
  has_many :reviews

  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }


end
