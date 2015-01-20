class Customer < ActiveRecord::Base
  has_many :ratings
	has_many :books, through: :ratings

	validates :email, presence: true, uniqueness: true
	validates :first_name, presence: true
	validates :last_name, presence: true

end
