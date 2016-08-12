class DashboardController < ApplicationController
  def show
    #find inspirational quote
    @follow_ups = Conversation.where(follow_up_on: Date.today)
  end
end
