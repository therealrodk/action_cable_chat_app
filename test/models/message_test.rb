require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  def setup
    @user = users(:example)
    @message = @user.messages.build(content: "Lorem ipsum")
    @mention = @user.messages.build(content: "@example")
  end

  test "should be valid" do
    assert @message.valid?, @message.errors.full_messages
  end

  test "should not be blank" do
    @message.content = " "
    assert !@message.valid?
  end

  test "should parse @mention" do
    mention = @mention.mentions
    assert_not mention.empty?
  end

  test "mentions should not work" do
    message = @message.mentions
    assert message.empty?
  end
end
