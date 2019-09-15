class LogInUser < BaseInteractor
	def initialize(document_number:, password:)
		@document_number = document_number
		@password = password
	end

	def execute
		validate_password

		user
	end

	private
	def user
		@user ||= User.find_by! document_number: @document_number
	end

	def validate_password
		invalid :password, 'La contraseña es invalida' unless user.valid_password? @password
	end
end