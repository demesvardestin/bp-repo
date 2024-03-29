class ImageUploader < CarrierWave::Uploader::Base

  # Choose what kind of storage to use for this uploader:
  # if Rails.env.development?
  #   storage :file
  # else
  #   storage :fog
  # end
  
  storage :file
  
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end
  
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end
  
  # version :small_thumb, from_version: :thumb do
  #   process resize_to_fill: [20, 20]
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
end
