Rails.application.routes.draw do
  root to: 'home#index', session_mode: 'HOME_PAGE'
  devise_for :users, session_mode: 'USER_PAGE'

end
