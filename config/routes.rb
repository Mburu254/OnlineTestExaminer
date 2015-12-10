Rails.application.routes.draw do

  root 'home'   =>   'static_pages#home'
  get 'help'    =>  'static_pages#help'
  get 'about'   =>  'static_pages#about'
  get 'contact' =>  'static_pages#contact'
  get 'signup'  =>  'users#new'

  get 'login'   => 'sessions#new'
  post 'login'  => 'sessions#create'
  post 'logout' => 'sessions#destroy'

  resources :users do
    resources :tests, excerpt: [:delete] do
      resources :questions, excerpt: [:show, :delete] 
      resources :candidates, excerpt: [:delete]
    end
  end
  
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
end
