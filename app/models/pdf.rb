class Pdf < ApplicationRecord
  mount_uploader :file, PdfUploader
end
