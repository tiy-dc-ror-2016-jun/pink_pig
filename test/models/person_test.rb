require "test_helper"

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

  test "person can have a nested phone number" do
    person = Person.new(full_name: "Russell")
    person.phone_numbers_attributes = [{digits: '1231231234', phone_type: 'Work'}]
    person.save

    person.reload

    assert_equal '1231231234', person.phone_numbers[0].digits
  end

end
