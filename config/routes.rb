# == Route Map
#
#          Prefix Verb   URI Pattern                   Controller#Action
#       questions GET    /questions(.:format)          questions#index
#                 POST   /questions(.:format)          questions#create
#    new_question GET    /questions/new(.:format)      questions#new
#   edit_question GET    /questions/:id/edit(.:format) questions#edit
#        question GET    /questions/:id(.:format)      questions#show
#                 PATCH  /questions/:id(.:format)      questions#update
#                 PUT    /questions/:id(.:format)      questions#update
#                 DELETE /questions/:id(.:format)      questions#destroy
# questions_index GET    /questions/index(.:format)    questions#index
#

Rails.application.routes.draw do
#  root to: 'sessions#new'
#  resource :session, only: [:new, :create, :destroy]

  resources :questions
  get 'questions/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
