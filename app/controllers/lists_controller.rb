class ListsController < ApplicationController
  def new
    @list = List.new
  end
  #上記のList.newと下記のList.newは別物？
  #下記のList.newが新規作成したインスタンスの中身はどこに記述されている？ストロングパラメーターのところ？
  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end

  private
  #下記以降はURLとのリンクが外れる
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
