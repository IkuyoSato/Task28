Rails.application.routes.draw do

  get 'comments/new'
  get 'topics/new'
  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :topics

  get   "favorites/index"

  #お気に入りの追加
  post  "/favorites", to: "favorites#create"

  #お気に入りの削除
  delete "/favorites", to: "favorites#destroy"

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #コメントの送信
  post "topics/comments", to: "comments#create"
  # コメントの削除
  delete "/comments", to: "comments#destroy"
end
