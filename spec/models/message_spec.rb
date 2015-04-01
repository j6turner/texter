require 'rails_helper'

describe Message, :vcr => true do
  it "doesn't save the message if twilio gives an error" do
    message = Message.new(:body => 'hi', :to => '1111111', :from => '5039463641')
    message.save.should be false
  end

  it "adds an error if the to number is invalid" do
    message = Message.new(:body => 'hello', :to => '5555555', :from => '5034107773')
    message.save
    message.errors.messages[:base].should eq ["The 'To' number 5555555 is not a valid phone number"]
  end
end
