Rails.application.routes.draw do
  root 'homes#top'
  resources :boards, only: [:index, :show, :edit, :create, :update] do
    resources :comments, only: [:create]
  end
  resources :categories, only: [:index, :edit, :create, :update]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
