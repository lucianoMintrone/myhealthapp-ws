class HospitalSerializer < ActiveModel::Serializer
	attributes :id, :name, :address, :latitude, :longitude
end
