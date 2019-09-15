class DoctorSerializer < ActiveModel::Serializer
	attributes :id, :name, :phone_number, :specialty

	belongs_to :hospital
end
