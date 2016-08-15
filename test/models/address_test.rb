require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  test "can create new address" do
    address = Address.create(address_line_1: "1 that lane", city: "liverpool", state: "england")
    assert address.valid?
  end

  test "address can be persistant" do
    address = addresses(:two)
    assert address.valid?
  end

  test "belongs to person" do
  address = addresses(:one)
  assert_equal "jane smith", address.person.full_name
  end

end
