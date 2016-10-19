class Post < ApplicationRecord
  has_many :images, as: :fileable
  validates :images, length: { maximum: 5 }
end
