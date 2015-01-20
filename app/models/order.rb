class Order < ActiveRecord::Base
	include AASM

	belongs_to :user

	enum :state => [:in_progress, :in_queue, :in_delivery, :delivered]

	aasm :column => :state, :enum => true do
    state :sleeping, :initial => true
    state :running
  end

end
