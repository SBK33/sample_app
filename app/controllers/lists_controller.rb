class ListsController < ApplicationController
  def new
    @list = List.new
  end
  #上記のList.newと下記のList.newは別物？
  #下記のList.newが新規作成したインスタンスの中身はどこに記述されている？ストロングパラメーターのところ？
  def create
    list = List.new(list_params)
    list.save
    redirect_to list_path(list.id)
  end

  def index
    @lists = List.all
  end

  def show
    #インスタンス変数の名称がnewの中のものと同一だが、問題ないのか？インスタンス変数の内容はそのアクションの中でしか有効じゃないのか？
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)  
  end

  private
  #下記以降はURLとのリンクが外れる
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
