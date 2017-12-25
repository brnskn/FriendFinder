Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root 'home#index'

  resources :posts do
    member do
      put "like", to: "posts#like"
      put "unlike", to: "posts#unlike"
    end
    resources :comments
  end
  get 'news' => 'newsfeed#index', :as => :news
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
