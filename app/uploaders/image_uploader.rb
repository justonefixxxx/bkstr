class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  before :cache, :setup_available_sizes

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # def default_url
    # ...
  # end

  process :dynamic_resize_to_fit => :default

  version :mini do
    process :dynamic_resize_to_fit => :mini
  end

  # conditional processing: we process "thumb" version only if it was defined in model
  version :thumb, :if => :has_thumb_size? do
    process :dynamic_resize_to_fit => :thumb
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def sanitize_regexp
    /[^[:word:]\.\-\+]/
  end

  def dynamic_resize_to_fit(size)
    resize_to_fit *(model.class::IMAGE_SIZES[size])
  end

  def method_missing(method, *args)
    # we've already defined "has_VERSION_size?", so if a method with
    # similar name is missed, it should return false
    return false if method.to_s.match(/has_(.*)_size\?/)
    super
  end

  protected
  # the method called at the start
  # it checks for <model>::IMAGE_SIZES hash and define a custom method "has_VERSION_size?"
  # (more on this later in the article)
  def setup_available_sizes(file)
    model.class::IMAGE_SIZES.keys.each do |key|
      self.class_eval do
        define_method("has_#{key}_size?".to_sym) { true }
      end
    end
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:


  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
