module Image
	class BookCover < ActiveRecord::Base
		belongs_to :book

	  IMAGE_SIZES = {
	    :default => [900, 900],
	    :mini => [300, 900],
	    :thumb => [100, 300]
	  }

	  mount_uploader :image, ImageUploader

    def image
      @image||image_from_google
    end

    private
    def image_from_google(book.title)
      suckr = ImageSuckr::GoogleSuckr.new
      image_url = suckr.get_image_url({"q" => "#{book.title}"})
      image = MiniMagick::Image.open(image_url)
    end

	end
end