class TodosController < ApplicationController
  before_action :authenticate_user!

  def create
  Todo.create(item_params)
  end

  def delete
  @todo = Todo.find(params[:id])
  @todo.delete!
  end

  private
  def item_params
    params.require(:item).permit(:title, :user_id, :completed)
  end
end
