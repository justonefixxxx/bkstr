class Order < ActiveRecord::Base
	include AASM

	belongs_to :user

	enum :state => [:in_progress, :in_queue, :in_delivery, :delivered]

	aasm :column => :state, :enum => true do
    state :in_progress, :initial => true
    state :in_queue
    state :in_delivery
    state :delivered
  end

end
