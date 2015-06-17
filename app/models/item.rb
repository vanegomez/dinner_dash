class Item < ActiveRecord::Base
  validates :title, presence: true,
            uniqueness: true
  validates_presence_of :description, :price

  # validates :price, numericality: { only_integer: true, greater_than: 0 }

  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
