Rails.application.routes.draw do 
  get 'roomtypes/index'
  get 'listhotels', to: 'hotels#index'
  get 'hotels/:id',to: 'hotels#show', as: 'hotels'
  get 'listroomtypes' ,to: 'roomtypes#index'
  get 'roomtypes/:id',to: 'roomtypes#show', as: 'roomtypes'
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'signup' ,to: 'users#new'

  get 'login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  delete 'logout',to: 'sessions#destroy'


  resources :users
  get 'users/:id',to: 'users#show', as: 'usersshow'
end
