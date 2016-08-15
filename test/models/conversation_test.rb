require 'test_helper'

class ConversationTest < ActiveSupport::TestCase

  test "can create conversation" do
    my_call = Conversation.create(medium: "phone")
    assert_equal my_call.medium, conversations(:call).medium
  end
end
