Rails.application.routes.draw do
  resources :blogs

  get 'about', to: 'pages#about'

  get 'search' => 'blogs#search', :as => 'search_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :blogs do
    member do
      get :toggle_status
    end
  end


  root to: 'blogs#index'
end
