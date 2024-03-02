Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create'
  #上下同一のURLだがpost getでリクエストが異なるから同一でも問題ないのか？
  get 'lists' => 'lists#index'
  get 'lists/:id' => 'lists#show', as: 'list'

  get 'lists/edit'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
