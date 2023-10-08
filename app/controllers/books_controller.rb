class BooksController < ApplicationController

  def index 
    if params[:order] == 'author'
      @books = Book.all.order('author')
    elsif params[:order] == 'title'
      @books = Book.all.order('title')
    elsif params[:order] == 'year'
      @books = Book.all.order('year')
    else
      @books = Book.all
    end
  end
end
