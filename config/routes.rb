Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  get 'articles' , :to => 'articles#index'
  get 'articles/show/:id' , :to => 'articles#show'
  post 'articles/create' , :to => 'articles#create'
  post 'articles/update/:id' , :to => 'articles#update'
  post 'articles/destroy/:id' , :to => 'articles#destroy'
  resources :events
end
