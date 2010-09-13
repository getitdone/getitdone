class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new params[:list]
    if @list.save
      puts "foo"
      redirect_to lists_path, :notice => "New list created"
    else
      puts "didn't work"
      render :action => "new"
    end
  end

  def destroy
    @list = List.find params[:id]
    @list.destroy

    redirect_to lists_path, :notice => "List destroyed"
  end
end
