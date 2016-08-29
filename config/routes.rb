Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  get 'articles/show/:id' , :to => 'articles#show'
  post 'articles/create' , :to => 'articles#create'
  post 'articles/update' , :to => 'articles#update'
  post 'articles/delete' , :to => 'articles#delete'
  resources :events
end
