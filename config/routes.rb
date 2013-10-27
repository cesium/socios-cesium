SociosCesium::Application.routes.draw do
  root to: "members#index"
  resources :members
  resources :locations
  resources :courses
end
