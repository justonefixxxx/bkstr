class Book < ActiveRecord::Base
	has_and_belongs_to_many :authors
	has_and_belongs_to_many :categories

	validates :title, presence: true
	validates :price, presence: true
	validates :quantity, presence: true

	has_many :ratings
	has_many :customers, through: :ratings
end
