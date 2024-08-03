class MailsController < ApplicationController
    def home
    
    end

    def send_mail
        SendMailJob.perform_async
        redirect_to root_path
    end
end
