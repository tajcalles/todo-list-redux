class Api::ListsController < ApplicationController
  before_action :set_list, :only [:show, :update, :destroy]

  def index
    render json: List.order(created_at: :desc)
  end

  def show
    render json: @list
  end

  def create
    list = List.create(list_params)
    if list.save
      render json: list
    else
      render json: { errors: list.errors.full_messages.join(',') }, status: 422
    end
  end

  def update
    if @list.update(list_params)
      render json: @list
    else
      render json: { errors: @list.errors.full_messages.join(',') }, status: 422
    end
  end

  def destroy
    @list.destroy
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:item, :completed)
  end
end
