class StoresController < ApplicationController
  def index
  end

  def show
    @store = Store.find(params[:id])
    @dishes = @store.dishes
  end
end
