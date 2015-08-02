class HomeController < ApplicationController

    def index
        # @artist = ENV["CONSUMER_SECRET"]
        p @artist = Discogs::Client.new.artist
        p @results = Discogs::Client.new.search("steve")
    end

end
