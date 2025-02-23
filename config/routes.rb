Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root to: "homes#top"

resources :comics, only: [:new, :create, :index, :show, :destroy] do
  resource :favorite, only: [:create, :destroy]
  resources :reviews, only: [:create, :destroy]
end
resources :users, only: [:show, :edit, :update]

get 'homes/about', to: 'homes#about', as: 'about'

end