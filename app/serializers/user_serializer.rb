class UserSerializer < ActiveModel::Serializer
	attributes :id, :email, :medical_plan_number, :document_number, :first_name, :last_name, 
		:phone_number, :birth_date, :medical_plan_expiration_date, :is_enabled
end
