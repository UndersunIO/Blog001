Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'pages#home'
get 'blog', to: 'pages#blog'
get 'about', to: 'pages#about'
get 'signup', to: 'users#new'
resources :users, except: [:new]

get 'log', to: 'sessions#new'
post 'log', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'

end
