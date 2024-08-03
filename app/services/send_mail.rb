class SendMail
    def self.call
        Mailjet.configure do |config|
            config.api_key = ENV['EMAIL_API_KEY']
            config.secret_key = ENV['EMAIL_API_SECRET']
            config.api_version = "v3.1"
          end

          variable = Mailjet::Send.create(messages: [{
            'From'=> {
                'Email'=> ENV['FROM_EMAIL'],
                'Name'=> ENV['FROM_EMAIL']
              },
              'To'=> [
                {
                  'Email'=> ENV['TO_EMAIL'],
                  'Name'=> ENV['TO_EMAIL']
                }
              ],
              'Subject'=> 'Przypomnienie',
              'TextPart'=> 'Przypomnienie',
              'HTMLPart'=> 'Przypomnienie',
              'CustomID' => 'AppGettingStartedTest'
          }]
          )
    end
end