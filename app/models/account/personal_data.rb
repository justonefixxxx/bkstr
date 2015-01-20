module Account
	class PersonalData
		include ActiveModel::Validations
		attr_accessor
			:first_name,
			:last_name,
			:email,
			:address

		def billing_address(params)

		end

		def shipping_address()
			billing_address
		end

	end
end