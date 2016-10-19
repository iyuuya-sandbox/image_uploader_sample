class Image < ApplicationRecord
  belongs_to :fileable, polymorphic: true
end
