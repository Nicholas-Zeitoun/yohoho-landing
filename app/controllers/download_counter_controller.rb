class DownloadCounterController < ApplicationController
    def download_counter_params
        params.require(:download_counter).permit(:type)
    end

    def new
        puts "add download counter"
        @downloadCounter = DownloadCounter.new
    end

    def create
        @downloadCounter = DownloadCounter.create(download_counter_params)
        @downloadCounter.type = params[:type]
        @downloadCounter.counter = 1
        @downloadCounter.save

        if (params[:type].eql? "rulebook")
            redirect_to "https://uploads-ssl.webflow.com/5d79944c26acc6f0a7e96822/5ec5f77e9818918b2003280b_YOHOHO-Rulebook-verbose.pdf", :notice => 'Thanks for dowloading Yohoho Rulebook!'
        else
            redirect_to "https://uploads-ssl.webflow.com/5d79944c26acc6f0a7e96822/5ec5363498978d6c3b8631ac_YOHOHO-Print-n-play.pdf", :notice => 'Thanks for dowloading Yohoho Print-n-play!'
        end
    end
end
