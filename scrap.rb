response = RestClient::Request.new(
  :method => :post,
  :url => 'https://api.twilio.com/2010-04-01/Accounts/ACbdc59dfb88cc848b1db73d613a09c7a2/Messages.json',
  :user => 'ACbdc59dfb88cc848b1db73d613a09c7a2',
  :password => '92c9b97da750f9c2b64b004fda49bc84',
  :payload => { :Body => 'Hellooo World',
                :From => '5034107773',
                :To => '5037561843' }
).execute

RestClient.post('https://AC3875aab10a50a5ed3e5a22f7a01646b0:3051c4e32846a1a00630e7b228a926a1@api.twilio.com/2010-04-01/Accounts/AC3875aab10a50a5ed3e5a22f7a01646b0/Messages.json',
  :Body => 'Hellooo World',
  :From => '5034107773',
  :To => '5037561843')
