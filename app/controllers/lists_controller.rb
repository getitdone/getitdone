class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

end
