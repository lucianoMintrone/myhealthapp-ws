module ErrorRaiser
	def error(error_name, error_message, error = MyHealthError)
		raise error.new error_name, error_message
	end

	def invalid(exception_name, exception_message)
		error "invalid_#{exception_name}", exception_message
	end
end