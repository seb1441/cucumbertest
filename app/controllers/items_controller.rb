class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    redirect_to action: :index
    Item.create params.require(:item).permit :name
  end

  def mark_done
    Item.mark_done params[:id]
    redirect_to action: :index
  end
end
