class User < ApplicationRecord
  belongs_to :profile_image, class_name: 'Image', required: false
end
