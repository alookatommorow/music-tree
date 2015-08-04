Rails.application.routes.draw do

    ACCEPT_JSON = -> (request) {
        request.accepts.include?(:json)
    }

    scope constraints: ACCEPT_JSON do
        post '/search', to: 'home#search'
        post '/artists/:artist_id', to: 'home#subsearch'
        # resources :artists, only: [:show]
    end

    get '*path', to: 'home#index'
    root         to: 'home#index'

end
