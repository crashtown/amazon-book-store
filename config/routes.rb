Rails.application.routes.draw do
  root to: 'pages#index'

  get 'pages/authors', to: "pages#authors", as: :authors

  get 'pages/books', to: "pages#books", as: :books

  get 'pages/author_books'

  get 'pages/stores', to: "pages#stores", as: :stores

  get 'pages/stores_view'

  post 'pages/storesearch'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
