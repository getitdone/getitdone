module ItemsHelper
  def remove_label(label_id)
    @item = Item.find params[:id]
    @item.labels.delete(Label.find(params[:label][:id]))

    redirect_to lists_path
  end
end
