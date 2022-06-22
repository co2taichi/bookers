class BooksController < ApplicationController
  def new
  end

  def index
    @list = Book.new
    @lists = Book.all
  end

  def create
    list = Book.new(list_params)
    list.save
    redirect_to '/books'
  end

  def show
    @list = Book.find(params[:id])
  end

  def edit
    @list = Book.find(params[:id])
  end

  def update
    list = Book.find(params[:id])
    list.update(list_params)
    redirect_to "/books/#{list.id}"
  end

  def destroy
    list = Book.find(params[:id])
    list.destroy
    redirect_to '/books'
  end

  private
  def list_params
    params.require(:book).permit(:title, :body)
  end
end
