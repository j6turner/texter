require 'rails_helper'

describe Message, :vcr => true do

  it { should validate_presence_of :to }
  it { should validate_presence_of :from }
  it { should validate_presence_of :body }

  it "doesn't save the message if twilio gives an error" do
    message = Message.new(:body => 'hi', :to => '1111111', :from => '5039463641')
    expect(message.save).to be false
  end

  it "adds an error if the to number is invalid" do
    message = Message.new(:body => 'hello', :to => '5555555', :from => '5034107773')
    message.save
    expect(message.errors.messages[:base]).to eq ["The 'To' number 5555555 is not a valid phone number."]
  end

end
