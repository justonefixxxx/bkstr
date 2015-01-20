class Order < ActiveRecord::Base

	enum :state => [:in_progress, :in_queue, :in_delivery, :delivered]
	belongs_to :user

end
