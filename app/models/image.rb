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
    if file.present? && file_changed?
      self.name ||= file.filename
      self.content_type ||= file.content_type
      self.digest ||= file.digest
      logger.debug file.size
    end
  end
end
