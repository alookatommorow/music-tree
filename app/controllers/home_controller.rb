class HomeController < ApplicationController

    def index
        @artist = Discogs::Client.new.artist
    end

end
