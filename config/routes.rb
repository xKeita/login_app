Rails.application.routes.draw do
  # get 'home/top'
  root "home#top"
  get "login" => "devise/sessions#new"
  get "signup" => "devise/registrations#new"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
