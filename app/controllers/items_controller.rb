class ItemsController < ApplicationController

  def new
    @list = List.find params[:list_id]
    @item = Item.new
  end

  def create
    @list = List.find params[:list_id]
    @item = @list.items.create params[:item]
    redirect_to lists_path, :notice => "New item created"
  end

  def destroy
    @item = Item.find params[:id]
    @item.destroy

    redirect_to lists_path, :notice => "Item destroyed"
  end
end
