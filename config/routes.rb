Rails.application.routes.draw do
  root to: 'home#index', mode: 'home'
  devise_for :users

end
