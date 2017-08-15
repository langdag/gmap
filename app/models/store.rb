class Store < ApplicationRecord
	def full_address
		"#{country}, #{name}, #{address}, #{city}"
	end
end
