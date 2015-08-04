Rails.application.routes.draw do


  get '*path', to: 'home#index'
  root         to: 'home#index'

  post '/search', to: 'home#search'
  post '/subsearch', to: 'home#subsearch'

end
