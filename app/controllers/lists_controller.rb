class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new params[:post]
    if @list.save
      redirect_to lists_path, :notice => "New list created"
    else
      render :action => "new"
    end
end
