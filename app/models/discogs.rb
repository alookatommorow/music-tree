module Discogs
  class Client
    include HTTParty
    base_uri "https://api.discogs.com"

    def artist(artist_id = "108713")
      self.class.get("/artists/#{artist_id}")
    end

    def search(params)
        self.class.get("/database/search?q=#{params}&key=#{ENV['CONSUMER_KEY']}&secret=#{ENV['CONSUMER_SECRET']}&per_page=100")
    end

    def user_agent
      "MusicTree/1.0"
    end

    def headers
      {"key" => ENV["CONSUMER_KEY"], "secret" => ENV["CONSUMER_SECRET"]}
    end

  end

end
