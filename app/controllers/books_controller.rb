class BooksController < ApplicationController
  def new
  end

  def index
    @list = List.new
    @lists = List.all
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to '/books/index'
  end

  def show
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
