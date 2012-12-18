class ItemsController < WorkflowController
  def index
    @items = Item.all
  end
end
