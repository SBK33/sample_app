class ListsController < ApplicationController
  def new
    @list = List.new
  end
  #上記のList.newと書きのList.newは別物？
  def create
    list = List.new(listt_params)
    list.save
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end

  def list_params
    params.require(:list).permit(:title, :body)
  end
end
