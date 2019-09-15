class Hospital < ApplicationRecord
	has_many :doctors

	acts_as_mappable :default_units => :kms,
		:lat_column_name => :latitude,
		:lng_column_name => :longitude
end