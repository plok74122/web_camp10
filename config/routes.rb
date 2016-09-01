Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  resources :events do
    resources :attendees , :controller => "event_attendees"
    resource :locations , :controller => "event_locations"
  end
end
