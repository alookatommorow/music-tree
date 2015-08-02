Rails.application.routes.draw do

  get '*path', to: 'home#index'
  root         to: 'home#index'

end
