class Account < ApplicationRecord
  has_secure_password

  validates :user_name, presence: true, unique:true
  has_many :projects
  has_many :bids
end
