class OrdersController < ApplicationController

	def add_book
		@order << item
	end

  private
	def current_order
		if current_user
			current_user.order_in_progress
		end
	end


end
