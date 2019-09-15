module FailureResponseRenderer
	include ResponseRenderer

	def render_failed_response( error, error_message, status )
		hash = { response: { error: error, error_message: error_message } }
		render_response hash: hash, status: status
	end

	def render_record_not_found(exception)
		render_failed_response 'record_not_found', exception.message, 404
	end
end