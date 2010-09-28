class LabelsController < ApplicationController

  def new
    @label = Label.new
  end

  def create
    @label = Label.new params[:label]
    if @label.save
      redirect_to lists_path
    end
  end

  def destroy
    @label = Label.find params[:id]
    @label.destroy
  end

  def delete
    @item = Item.find params[:item_id]
    @item.labels.delete params[:id]
  end
end
