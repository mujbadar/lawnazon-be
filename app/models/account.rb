class Account < ApplicationRecord
  validates_presence_of :user_name, :email, :password_digest
  validates :user_name, presence:true, uniqueness: true
  has_many :projects
  has_many :bids

  has_secure_password
end
