class PagesController < ApplicationController
  def index
  end

  def authors
    @authors = Author.all
  end

  def books
    @books = Book.all
    filter_params.each do | key, value |
    @books = @books.public_send(key, value) if value.present?
    end
  end

  def author_books
    @author = Author.find(params[:id])
  end

  def stores
    @stores = Store.all
  end

  def stores_view
    @stores = Store.all
    @store_id = Store.find(params[:id])
  end

  def storesearch
        @stores_user_address = Store.near(params[:user_address_input])
  end

  private

  def filter_params
    params.slice(:title, :price)
  end
end
