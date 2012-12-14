Daryatoys::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  match 'application/index' => 'application#index'
  match 'application/catalog' => 'application#catalog'
  match 'application/contact' => 'application#contact'
  match 'application/contact_send' => 'application#comment_save'
  match 'application/order_send' => 'application#order_send'

  root :to => 'application#index'
end
