Rails.application.routes.draw do

  resources :categories
  resources :departments
  resources :staffs
  devise_for :users
  root "staffs#index"

end
