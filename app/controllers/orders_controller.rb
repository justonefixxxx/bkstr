class OrdersController < ApplicationController

	before_action :authenticate_user!

	def add_item
		@order << item
	end

	def remove_item

	end

  private
	def current_user_order
		if current_user
			current_user.order_in_progress
		end
	end


end
