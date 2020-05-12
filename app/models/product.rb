class Product < ApplicationRecord
  has_attached_file :gallery
  validates_attachment_content_type :gallery, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/svg+xml"]
  # add a delete_<asset_name> method: 
  attr_accessor :delete_gallery
  before_validation { self.gallery.clear if self.delete_gallery == '1' }
end
