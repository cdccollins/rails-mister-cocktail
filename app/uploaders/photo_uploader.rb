# app/uploaders/photo_uploader.rb
class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true

  version :header do
    cloudinary_transformation height: 300, crop: :fill
  end
end
