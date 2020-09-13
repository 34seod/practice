# == Route Map
#
#      Prefix Verb   URI Pattern                Controller#Action
#      novels GET    /novels(.:format)          novels#index
#             POST   /novels(.:format)          novels#create
#   new_novel GET    /novels/new(.:format)      novels#new
#  edit_novel GET    /novels/:id/edit(.:format) novels#edit
#       novel GET    /novels/:id(.:format)      novels#show
#             PATCH  /novels/:id(.:format)      novels#update
#             PUT    /novels/:id(.:format)      novels#update
#             DELETE /novels/:id(.:format)      novels#destroy
# books_index GET    /books/index(.:format)     books#index
# hello_index GET    /hello/index(.:format)     hello#index
#  hello_show GET    /hello/show(.:format)      hello#show

Rails.application.routes.draw do
  resources :fan_comments
  resources :reviews
  resources :authors
  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hello/index'
  get 'hello/show'
end
