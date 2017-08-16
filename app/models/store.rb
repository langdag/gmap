class Store < ApplicationRecord



	def full_address
		[country,name,address,city].to_a.compact.join(",")
	end


	def api_query

		full_address.tr(' ', '+')

	end


end
