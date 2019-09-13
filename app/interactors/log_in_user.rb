class LogInUser < BaseInteractor
	def initialize(email:, password:)
		@email = email
		@password = password
	end

	def execute
		validate_password

		user
	end

	private
	def user
		@user ||= User.find_by! email: @email
	end

	def validate_password
		invalid :password, 'La contraseña es invalida' unless user.valid_password? @password
	end
end