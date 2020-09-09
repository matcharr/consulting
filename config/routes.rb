Rails.application.routes.draw do

  #previous_statics
  get '/methodealfoldi.html', to: 'statics#methode_alfoldi'
  get '/francisalfoldi.html', to: 'statics#methode_alfoldi'
  get '/conferencegesticulee.html', to: 'statics#methode_alfoldi'
  get '/contact.html', to: 'admin_mail#new'


  #current_static
  get 'statics/methode_alfoldi', to: 'statics#methode_alfoldi'
  get 'statics/protection_enfance', to: 'statics#protection_enfance'
  get 'statics/formation_a_distance', to: 'statics#formation_a_distance'
  get 'statics/conseil', to: 'statics#conseil'
  get 'statics/recherche_action', to: 'statics#recherche_action'
  get 'statics/animation_musicale', to: 'statics#animation_musicale'
  get 'statics/conferences_familiales', to: 'statics#conferences_familiales'
  get 'statics/temoignages', to: 'statics#temoignages'
  get 'statics/partenaires', to: 'statics#partenaires'
  get 'statics/livres', to: 'statics#livres'
  get 'statics/articles', to: 'statics#articles'
  get 'statics/dico_de_francis', to: 'statics#dico_de_francis'
  get 'statics/contact', to: 'statics#contact'
  get 'statics/newsletter', to: 'statics#newsletter'
  get 'statics/mentions_legales', to: 'statics#mentions_legales'
  get 'statics/presentation', to: 'statics#presentation'

  match 'download', to: 'statics#download_dico_de_francis', as: 'download', via: :get
  
  devise_for :users
  get 'landing_page/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "landing_page#index"

  resources :devise_test, only: [:create]

  resources :admin_mail, only: [:new, :create]

  resources :landing_page, only: [:index]  

  resources :folders, except: [:show]

  resources :folders do
    resources :comments, only: [:create]
  end

  resources :comments, only:  [:edit, :destroy, :update]

end
