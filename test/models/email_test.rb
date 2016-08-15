require 'test_helper'

class EmailTest < ActiveSupport::TestCase
  test "test can create email" do
    first_email = emails(:one)
    assert first_email.email , "pigsfly@pink.com"
  end

  test "email can be persistant" do
    email = emails(:one)
    assert email.valid?
  end

  test "belongs to person" do
    email = emails(:one)
    assert_equal "manager", email.person.title
  end
end
