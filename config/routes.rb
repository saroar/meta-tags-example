Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "home#index"

  get 'about' => 'home#about'

  get 'partners' => 'home#partners'

end
