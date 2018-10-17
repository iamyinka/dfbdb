Rails.application.routes.draw do

  resources :staffs
  devise_for :users
  root "staffs#index"

end
