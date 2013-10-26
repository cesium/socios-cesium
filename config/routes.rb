SociosCesium::Application.routes.draw do
  root to: "members#index"
  resources :locations
end
