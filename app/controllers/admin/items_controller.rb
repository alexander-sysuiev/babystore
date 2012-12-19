class Admin::ItemsController < Admin::BaseController
  before_filter :set_initial_data
  before_filter :check_item_params, :only => [:create, :update]
  before_filter :generate_image, :only => [:create, :update]
  before_filter :setting_attributes, :only => [:create, :update]

  def new
  end

  def create
    item = Item.new params[:item].merge(:image => @image)
    if item.save
      item.settings.create @settings_attrs if @settings_attrs.present?
      redirect_to category_item_path(:category_id => item.category_id, :id => item.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    old_image = @item.image
    attrs = params[:item].merge(:image => @image)

    if @item.update_attributes attrs
      old_picture.destroy if @image.present?
      Setting.delete_all ["id IN (?)", @item.settings.map(&:id)]
      @item.settings.create @settings_attrs if @settings_attrs.present?

      redirect_to category_item_path(@item.category_id, @item.id)
    else
      render :edit
    end
  end

private
  def set_initial_data
    @item = Item.find_by_id(params[:id]) || Item.new
    @settings_names = SettingName.all
  end

  def check_item_params
    path = @item.new_record? ? new_admin_item_path : edit_admin_item_path(@item)
    redirect_to path if params[:item].blank?
  end

  def generate_image
     @image = Picture.new params[:item].delete(:image) if params[:item][:image].present?
  end

  def setting_attributes
    @settings_attrs = params[:item].delete(:settings)
  end
end