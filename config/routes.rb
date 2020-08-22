Rails.application.routes.draw do

  devise_for :users
  get 'landing_page/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "landing_page#index"

  resources :landing_page, only: [:index]  

  resources :articles, except: [:show]

  resources :articles do
    resources :comments, only: [:create]
  end

  resources :comments, only:  [:edit, :destroy, :update]

end
