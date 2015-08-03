class HomeController < ApplicationController
    skip_before_filter  :verify_authenticity_token
    def index
        @artist = Discogs::Client.new.artist
        @results = Discogs::Client.new.search("steve")
    end

    def search
        results = Discogs::Client.new.search(params[:query])
        render json: results
    end

end
