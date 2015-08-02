module Discogs
  class Client
    include HTTParty
    base_uri "https://api.discogs.com"

    def artist(artist_id = "108713")
      self.class.get("/artists/#{artist_id}", headers: headers)
    end

    def user_agent
      "MusicTree/1.0"
    end

    def token
      "LgBwBDebtoTjAnoHNXnbjvlkXBfaRODjEKtHAQLH"
    end

    def headers
      {"User-Agent" => user_agent}
    end

  end

end
