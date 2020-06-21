class NewsletterFormController < ApplicationController
  def newsletter_form_params
    params.require(:newsletter_form).permit(:name, :email)
  end

  def new
    @news_letter_form = NewsletterForm.new
  end

  def create
    @news_letter_form = NewsletterForm.create(newsletter_form_params)
    if @news_letter_form.save
      redirect_to root_path, :notice => 'Thanks for signing up.'
    else
      flash[:danger] = "No u"
      redirect_to root_path(anchor: 'sign-up')
    end
  end
end
