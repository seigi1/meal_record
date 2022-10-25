Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'physical_informations', to: 'users/registrations#new_physical_information'
    post 'physical_informations', to: 'users/registrations#create_physical_information'
  end
  root to: 'meal_records#index'
  resources :users, only: :show
end
