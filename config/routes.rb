Rails.application.routes.draw do
  resources :campers
  root 'campers#index'
  get '/about' => "static_pages#about", as: "about"
  get '/index' =>  "static_pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
