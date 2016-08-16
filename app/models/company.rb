class Company < ActiveRecord::Base
  has_many :conversations
  has_many :phone_numbers, as: :phoneable
end
