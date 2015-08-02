class HomeController < ApplicationController

    def index
        @artist = Discogs::Client.new.artist
        @results = Discogs::Client.new.search("steve")
    end

end
