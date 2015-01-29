class Book < ActiveRecord::Base

	has_and_belongs_to_many :authors
	has_and_belongs_to_many :categories
	has_one :book_cover, dependent: :destroy,  class_name: "Image::BookCover"

	validates :title, presence: true
	validates :price, presence: true
	validates :quantity, presence: true

	has_many :ratings
	has_many :customers, through: :ratings

end
