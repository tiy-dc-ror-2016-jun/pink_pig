require 'test_helper'

class CompanyTest < ActiveSupport::TestCase

  test "can create new company" do
    company = Company.create()
    assert company.valid?
  end

  test "company can be persistant" do
    company = companies(:doggy)
    assert company.valid?
  end

  test "has many conversations" do
    company = companies(:piggy)
    assert_equal 1, company.conversations.count
  end

end
