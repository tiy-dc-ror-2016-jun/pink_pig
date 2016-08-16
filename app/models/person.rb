class Person < ActiveRecord::Base
  has_many :phone_numbers, as: :phoneable
  has_many :emails
  has_many :addresses
  has_many :conversations
  belongs_to :company

  # def phone_numbers_attributes=(attributes)
  #   # PhoneNumber.where(phoneable_id: id, phoneable_type: "Person").first_or_create(attributes)
  #   phone_numbers.build(attributes)
  # end

  accepts_nested_attributes_for :phone_numbers, reject_if: :all_blank, allow_destroy: true
end
