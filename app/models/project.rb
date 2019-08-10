class Project < ApplicationRecord
  belongs_to :account
  has_many :bids
end
