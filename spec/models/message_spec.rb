require 'rails_helper'

describe Message do
  it "" do
    message = Message.new(:body => 'hello', :to => '5555555', :from => '5555555555')
    message.save.should be false
  end
end
