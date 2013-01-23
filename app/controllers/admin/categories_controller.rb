class Admin::CategoriesController < Admin::BaseController

  def new
  end

  def update
    @category = Category.find params[:id]
    @category.update_attributes params[:category]
    redirect_to admin_root_path
  end

  def edit
    @category = Category.find params[:id]
  end

  def create
    Category.create params[:category]
    redirect_to admin_root_path
  end

  def index
    @categories = Category.all
  end
end
