class ItemsController < WorkflowController
  def index
    @category = Category.find_by_id(params[:category_id])
    @items = @category.nil? ? Item.all : @category.items
  end

  def show
    @item = Item.find params[:id]
    @settings = Setting.for_item(@item)
  end
end
