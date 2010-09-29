class ItemsController < ApplicationController
  helper_method :remove_label

  def new
    @list = List.find params[:list_id]
    @item = Item.new
  end

  def create
    @list = List.find params[:list_id]
    @item = @list.items.create params[:item]

    respond_to do |format|
      if @item.save
        format.js
        format.html { redirect_to lists_path }
      end
    end
  end

  def edit
    @list = List.find params[:list_id]
    @item = Item.find params[:id]
  end

  def update
    @list = List.find params[:list_id]
    @item = Item.find params[:id]
    params[:item][:label_ids] ||= []
    if @item.update_attributes params[:item]
      redirect_to lists_path, :notice => "Item updated"
    end
  end

  def destroy
    @item = Item.find params[:id]
    @item.destroy

    redirect_to lists_path, :notice => "Item destroyed"
  end

  def remove_label
    @item = Item.find params[:id]
    @item.labels.delete(Label.find(params[:label_id]))

    redirect_to lists_path
  end
end
