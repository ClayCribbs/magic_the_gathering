Rails.application.routes.draw do
  get 'pages/index'

  root 'pages#index'

  resources :pages, only: [] do
    collection do 
      post :add_card
      post :remove_card
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
