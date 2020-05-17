class NewsletterFormController < ApplicationController
    def newsletter_form_params
        params.require(:newsletter_form).permit(:name, :email)
    end

    def new
        puts "create new signup form"
        @newsletterForm = NewsletterForm.new
    end

    def create
        logger.info("create new signup formaaa")
        @newsletterForm = NewsletterForm.create(signup_form_params)
        @newsletterForm.save
        redirect_to root_path, :notice => 'Thanks for signing up.'
    end

end
    