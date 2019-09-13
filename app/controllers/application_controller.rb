class ApplicationController < ActionController::Base
	include ResponseRenderer
	include FailureResponseRenderer

	protect_from_forgery with: :exception
	skip_before_action :verify_authenticity_token

	rescue_from ::ActiveRecord::RecordNotFound, with: :render_record_not_found

	private
	def render_object(object, options = {})
		render_successful_response ObjectRenderer.new(object, options).render
	end

	def render_successful_response(hash)
		render_response hash: hash, status: 200
	end

	def render_record_not_found(exception)
		render_failed_response 'record_not_found', exception.message, 404
	end
end
