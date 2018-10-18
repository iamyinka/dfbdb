Rails.application.routes.draw do

  resources :departments
  resources :staffs
  devise_for :users
  root "staffs#index"

end
