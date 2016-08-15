require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "can create person" do
    person = people(:jane)
    assert person.valid?
  end

  test "people are persisted" do
    person = people(:jon)
    assert person.valid?
  end

  test "people have many phone numbers" do
    person = people(:jon)
    assert_equal 1, person.phone_numbers.count
  end

  test "people have many emails" do
    person = people(:jon)
    assert_equal 1, person.emails.count
  end

  test "people have many addressess" do
    person = people(:jon)
    assert_equal 1, person.addresses.count
  end

  test "people have conversations" do
    person = people(:jon)
    assert_equal 1, person.conversations.count
  end

  test "people belong to a company" do
    person = people(:jane)
    assert_equal "SalvationDogs", person.company.name
  end

end
