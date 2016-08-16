class Quote < ActiveRecord::Base
  def self.grab_quote
    # gets the quote being shown on today
    todays_quote = Quote.find_by(showed_on: Date.today)
    # gets a quote from the database

    if !todays_quote.nil?
      # if todays_quote has expired; update quote
      if todays_quote.showed_on != Date.today
        todays_quote = Quote.find_by(showed_on: nil)
        todays_quote.update(showed_on: Date.today)
        return todays_quote
      else
        # if it is todays_quote - return todays_quote
        return todays_quote
      end
    else
      # todays_quote is nil; return a quote
      todays_quote = Quote.find_by(showed_on: nil)
      todays_quote.update(showed_on: Date.today)
      return todays_quote
    end
  end
end
