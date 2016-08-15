require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  def test_quote_is_created
    new_quote = Quote.new(quote: "TA woman's mind is cleaner than a man's - She changes it more often.", author: "Lisa")
    assert_equal new_quote.author, "Lisa"
  end

  def test_get_quote_todays_quote
    today  = quotes(:one)
    assert_equal(today.showed_on, Date.today)
  end


  def test_get_a_new_quote
    today = quotes(:three)
    assert_equal(today.author, "Lisa")
  end

  def test_get_quote_when_todays_quote_is_nil
    today = quotes(:two)
    assert_equal(today.author, "Jamie")

  end
end
