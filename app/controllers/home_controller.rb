class HomeController < ApplicationController
    skip_before_filter  :verify_authenticity_token
    def index
        @artist = Discogs::Client.new.artist
        @results = Discogs::Client.new.search("steve")
    end

    def search
        p "*"*100
        p params
        p "*"*100
        if request.xhr?
        @results = Discogs::Client.new.search(params[:main])
            redirect_to '/'
        else
            redirect_to '/'
        end
    end

end
