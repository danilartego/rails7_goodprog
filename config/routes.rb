Rails.application.routes.draw do
  root to: 'questions#index'

  resources :questions
  resource :session, only: %i[new create destroy]
  resources :users, only: %i[new create edit update destroy]
  # post '/questions', to: 'questions#create'
  # patch '/questions/:id', to: 'questions#update'
  # delete '/questions/:id', to: 'questions#destroy'
end
