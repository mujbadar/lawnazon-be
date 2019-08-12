class Account < ApplicationRecord
  has_secure_password
  validates :user_name, presence:true, uniqueness: true
  validate :password
  has_many :projects
  has_many :bids
end
