class BooksController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    @books = Book.all
    @book = Book.new(list_params)
    if @book.save
      redirect_to "/books/#{@book.id}"
      flash[:notice] = 'Book was successfully created.'
    else
      render "index"
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(list_params)
      redirect_to "/books/#{@book.id}"
      flash[:notice] = 'Book was successfully created.'
    else
      render "edit"
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  private
  def list_params
    params.require(:book).permit(:title, :body)
  end
end
