class DashboardController < ApplicationController
  def show
    begin
      @sales_name = current_user.name
    rescue
      @sales_name = "Erik"
    end
    @follow_ups = Conversation.where(follow_up_on: Date.today)
    @quote = Quote.offset(rand(Quote.count)).first
  end
end
