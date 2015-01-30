class Image::BookCoverController < ApplicationController

  def image
    book_cover.book_id || image_from_google
  end

  private
  def image_from_google
    suckr = ImageSuckr::GoogleSuckr.new
    image_url = suckr.get_image_url({"q" => "#{book.title}"})
    image = MiniMagick::Image.open(image_url)
  end

end
