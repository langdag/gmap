class Store < ApplicationRecord
	geocoded_by :full_address,latitude: :lat, longitude: :lng
	after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

	def full_address
		[country,name,address,city].compact.join(",")
	end



		#full_address.tr(' ', '+')




end
