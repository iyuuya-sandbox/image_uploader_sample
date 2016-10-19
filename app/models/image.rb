class Image < ApplicationRecord
  belongs_to :fileable, polymorphic: true, required: false

  validates :file, presence: true
  validates :name, presence: true
  validates :content_type, presence: true
  validates :digest, presence: true

  mount_uploader :file, ImageUploader

  before_validation :set_meta_info

  private

  def set_meta_info
    self.name = self.file.filename
    self.content_type = self.file.content_type
    self.digest = self.file.digest
  end
end
