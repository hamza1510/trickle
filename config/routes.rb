Rails.application.routes.draw do
  devise_for :admins

  authenticated :admin do
  	root "dashboard#index"
  end

  namespace :admins do
		resources :campaigns do
			resources :pages
		end
  end

  resources :campaigns do
    resources :pages
  end

  root "home#index"

end
