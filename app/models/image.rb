class Image < ApplicationRecord
  belongs_to :fileable, polymorphic: true, required: false

  validates :file, presence: true
  validates :name, presence: true
  validates :content_type, presence: true
  validates :digest, presence: true

  mount_uploader :file, ImageUploader
end
