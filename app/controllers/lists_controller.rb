class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find params[:id]
    @items = @list.items.select { |i| i.status != 2 }
    @finished = @list.items.select { |i| i.status == 2 }
  end
  
  def new
    @list = List.new
  end

  def create
    @list = List.new params[:list]
    if @list.save
      redirect_to lists_path, :notice => "New list created"
    else
      render :action => "new"
    end
  end

  def destroy
    @list = List.find params[:id]
    @list.destroy

    redirect_to lists_path, :notice => "List destroyed"
  end
end
