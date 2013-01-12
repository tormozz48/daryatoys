Daryatoys::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  scope "(:locale)", :locale => /ru|uk/ do
    resources :main, :only => [:index]
    resources :catalog, :only => [:index]
    resources :comments, :only => [:index, :new, :create]
    resources :orders, :only => [:new, :create]
    resources :response, :only => [:new, :create]
    resources :delivery, :only => [:index]
    resources :payment, :only => [:index]
  end
  
  match '/:locale' => 'main#index'

  root :to => 'main#index'
end
