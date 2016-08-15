class Conversation < ActiveRecord::Base
  belongs_to :user
  belongs_to :person
  belongs_to :company
  validates :user_id, presence: true
  validates :person_id, presence: true
  validates :company_id, presence: true
end
