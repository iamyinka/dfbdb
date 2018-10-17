Rails.application.routes.draw do

  devise_for :users
  root "staffs#index"

end
