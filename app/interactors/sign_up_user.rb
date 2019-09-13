class SignUpUser < BaseInteractor
	def initialize(email:, medical_plan_number:)
		@email = email
		@medical_plan_number = medical_plan_number
	end

	def execute
		user = User.find_by! email: @email, medical_plan_number: @medical_plan_number
		invalid :user, 'El usuario ya se encuentra registrado' if user.encrypted_password.present?
		user
	end
end