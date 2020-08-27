Rails.application.routes.draw do

  get 'statics/methode_alfoldi', to: 'statics#methode_alfoldi'
  get 'statics/formation', to: 'statics#formation'
  get 'statics/formation_a_distance', to: 'statics#formation_a_distance'
  get 'statics/conseil', to: 'statics#conseil'
  get 'statics/recherche_action', to: 'statics#recherche_action'
  get 'statics/animation_musicale', to: 'statics#animation_musicale'
  get 'statics/conferences_familiales', to: 'statics#conferences_familiales'
  get 'statics/temoignages', to: 'statics#temoignages'
  get 'statics/partenaires', to: 'statics#partenaires'
  get 'statics/livres', to: 'statics#livres'
  get 'statics/presse', to: 'statics#presse'
  get 'statics/dico_de_francis', to: 'statics#dico_de_francis'
  get 'statics/on_repond_a_vos_questions', to: 'statics#on_repond_a_vos_questions'
  get 'statics/newsletter', to: 'statics#newsletter'

  match 'download', to: 'statics#download_dico_de_francis', as: 'download', via: :get

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
