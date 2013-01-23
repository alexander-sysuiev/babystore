class Admin::SettingsController < Admin::BaseController
  def new
  end

  def create
    SettingName.create params[:setting]
    redirect_to admin_settings_path
  end

  def edit
    @setting = SettingName.find params[:id]
  end

  def update
    @setting = SettingName.find params[:id]
    @setting.update_attributes params[:setting_name]
    redirect_to admin_root_path
  end
end
