class NewsletterFormController < ApplicationController
    def newsletter_form_params
        params.require(:newsletter_form).permit(:name, :email)
    end

    def new
        puts "create new signup form"
        @newsletterForm = NewsletterForm.new
    end

    def create
        @newsletterForm = NewsletterForm.create(newsletter_form_params)
        @newsletterForm.save
        redirect_to root_path, :notice => 'Thanks for signing up.'
    end

end
    