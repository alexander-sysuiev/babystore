class Image < ActiveRecord::Base
  has_one :item
  has_attached_file :photo,
                    :url => "/assets/pictures/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/pictures/:id/:style/:basename.:extension",
                    :storage => :Dropboxstorage,
                    :styles => { :thumb=> "100x100#", :preview  => "400x400>" }

  before_destroy :delete_attachments
private

  def delete_attachments
    photo.destroy
  end
end