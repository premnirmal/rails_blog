Blog::Application.routes.draw do
  resources :articles
  resources :tags
  root :to => 'articles#index'
  
  # for static pages
  get "/pages/*id" => 'pages#show', :as => :page, :format => false

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

end
