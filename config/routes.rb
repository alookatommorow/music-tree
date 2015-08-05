Rails.application.routes.draw do

    ACCEPT_JSON = -> (request) {
        request.accepts.include?(:json)
    }

    scope constraints: ACCEPT_JSON do
        post '/search', to: 'home#search'
        post '/subsearch', to: 'home#subsearch'
    end

    get '*path', to: 'home#index'
    root         to: 'home#index'

end
