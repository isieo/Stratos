Stratos::Application.routes.draw do
  resources :report_items

  resources :groups

  resources :reports

  devise_for :users

  root :to => "home#index"
end
