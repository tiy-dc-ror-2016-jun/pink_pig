require "test_helper"

class PhoneNumberTest < ActiveSupport::TestCase
  test "can create phone number" do
    phone = PhoneNumber.create(digits: "23411342234")
    assert phone.valid?
  end

  test "phone number is persisted" do
    phone = phone_numbers(:one)
    assert phone.valid?
  end
end
