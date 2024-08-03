class SendMailJob
    include Sidekiq::Worker

    def perform
        SendMail.call
    end
end