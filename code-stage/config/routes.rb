Rails.application.routes.draw do
  devise_for :personas
  devise_for :users

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'new_user', to: 'users#new_user'
      post 'new_persona', to: 'personas#new_persona'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end