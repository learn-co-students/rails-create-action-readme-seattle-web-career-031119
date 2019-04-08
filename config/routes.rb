Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new]
  get '/posts/new', to: 'posts#create', as: 'create_post'
end
