class DownloadCounterController < ApplicationController

  def download_counter_params
   params.require(:download_counter).permit(:name, :email)
  end

  def new
    @download_counter = DownloadCounter.new
  end

  def create
    @download_counter = DownloadCounter.create(download_counter_params)

    # Sending an email to the new signup
    # mailer = SignUpMailer.new
    # mailer.(@download_counter)

    if @download_counter.save
      SignUpMailer.printnplay(@download_counter).deliver_now
      redirect_to "https://uploads-ssl.webflow.com/5d79944c26acc6f0a7e96822/5eeeec75299cb9d2e2e7945c_StolenTreasure-Print-n-Play-and-rules.pdf"
    else
      flash[:danger] = "Invalid values for form!"
      redirect_to root_path
    end
  end
end
