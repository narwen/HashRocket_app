HashrocketProj::Application.routes.draw do
  devise_for :users do
  get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
end

  root :to => "pages#index"
  resources :users
 
end
