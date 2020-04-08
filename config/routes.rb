Rails.application.routes.draw do
  root 'homes#top'
  get 'boards/index'
  get 'boards/show'
  get 'boards/edit'
  get 'categories/index'
  get 'categories/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
