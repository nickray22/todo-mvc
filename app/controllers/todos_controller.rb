class TodosController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    Todo.create(item_params)
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(item_params)
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy!
  end

  private
  def item_params
    params.require(:item).permit(:title, :completed)
  end
end
