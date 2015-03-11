Rails.application.routes.draw do

  resources  :councils

  resources :users
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  resources :questions do
    resources :answers do
    end
  end

  resources :questions
  resources :council_memberships
  resources :inboxs, only: [:index]
  resources :friendships, except: [:update]
  get 'invite' => 'friendships#invite'
  match '/confirm/:id' => 'friendships#confirm', as: :confirm, via: :put
  
  root :to => 'welcome#index'

end
