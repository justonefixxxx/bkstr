module Image
	class BookCover < ActiveRecord::Base
		belongs_to :book

	  IMAGE_SIZES = {
	    :default => [900, 900],
	    :mini => [300, 900],
	    :thumb => [100, 300]
	  }

	  mount_uploader :image, ImageUploader

	end
end