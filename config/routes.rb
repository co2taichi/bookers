Rails.application.routes.draw do
  get '/', to: "homes#top"
  # get '/books/idex' => "books#index"
  # resources :books
  post 'books' => 'books#create'
  get 'books/index'
  get 'books/:id' => 'books#show'
  patch 'books/:id' => 'books#update', as: 'update_list'
  get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  delete 'books/:id' => 'books#destroy', as: 'destroy_list'
  # get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
