class ListsController < ApplicationController
  before_action :set_params, only: :show
  def index
    @lists = List.all
  end

  def show; end

  private

  def set_params
    @list = List.find(params[:id])
  end
end
