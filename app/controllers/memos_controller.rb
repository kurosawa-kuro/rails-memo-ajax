class MemosController < ApplicationController
  def index
    @memo_new = Memo.new
    @memos = Memo.all
  end
 
  def create
    @memo_new = Memo.new(memos_params)
    @memo_new.save
    redirect_to root_path
  end
 
  def update
    @memo = Memo.find(params[:id])
    @memo.update(memos_params)
    redirect_to root_path
  end
 
  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
    redirect_to root_path
  end
 
  private
 
  def memos_params
    params.require(:memo).permit(:title, :description)
  end
end