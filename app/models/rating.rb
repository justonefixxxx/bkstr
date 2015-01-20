class Rating < ActiveRecord::Base

	belongs_to :book
	belongs_to :customer

	validates :review, presence: true
  enum rating_number: [:one, :two, :three, :four, :five, :six, :seven,
  											:eight, :nine, :ten]

end
