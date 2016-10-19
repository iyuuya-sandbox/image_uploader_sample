json.extract! image, :id, :fileable_id, :fileable_type, :caption, :file, :name, :content_type, :digest, :created_at, :updated_at
json.url image_url(image, format: :json)