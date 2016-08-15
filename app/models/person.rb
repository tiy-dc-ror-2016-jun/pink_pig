class Person < ActiveRecord::Base
  has_many :phone_numbers
  has_many :emails
  has_many :addresses
  has_many :conversations
  belongs_to :company
end
