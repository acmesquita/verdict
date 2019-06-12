Rails.application.routes.draw do
  resources :decisions do
    get 'addOptions', on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'decisions#index'
end
