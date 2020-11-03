Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  get 'categories/update'
  get 'categories/destroy'
  get 'categories/new'
  get 'categories/edit'
  get 'categories/index'
  get 'categories/show'
  get 'categories/update'
  get 'categories/destroy'
  get 'categories/new'
  root 'welcome#home'
  get '/salut(/:name)', to: 'welcome#salut', as: 'salut' 
  resources :posts
  resources :categories

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
