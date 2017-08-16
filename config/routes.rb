Rails.application.routes.draw do

  resources :posts do
	   resources :comments
  end

  resources :posts do
    resources :likes, only: [:create]
  end


  root 'posts#index'

  get '/top' => "home#top"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
