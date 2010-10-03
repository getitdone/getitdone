class LabelsController < ApplicationController

  def new
    @label = Label.new
  end

  def create
    @label = Label.new params[:label]
    if @label.save
      redirect_to lists_path
    else
      redirect_to new_label_path
    end
  end

  def delete
    @item = Item.find params[:item_id]
    @item.labels.delete params[:id]
  end
  
  def destroy
    @label = Label.find params[:id]
    @label.destroy
    
    respond_to do |format|
      format.js
      format.html { redirect_to lists_path }
    end
  end
end
