class Company < ActiveRecord::Base
  has_many :conversations
end
