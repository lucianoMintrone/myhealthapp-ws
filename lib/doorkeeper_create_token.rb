require 'doorkeeper/tokens_controller'

module Doorkeeper
	class TokensController < Doorkeeper::ApplicationMetalController
		include FailureResponseRenderer

		def create
			begin
				response = strategy.authorize
				self.headers.merge! response.headers
				self.response_body 	= response.body.to_json
				self.status 			= response.status
			rescue NoMethodError => exception
			rescue Doorkeeper::Errors::DoorkeeperError => e
				auth_error_hash = params[:__auth_error]
				if !auth_error_hash.blank?
					error_type = auth_error_hash.delete(:type)
					error_description = auth_error_hash.delete(:msg)

					error = get_error_response_from_exception e
					self.headers.merge! error.headers
					self.response_body = { 
							error: "invalid_grant", 
							error_type: error_type, 
							error_description: error_description 
						}.merge( auth_error_hash ).to_json
					self.status = error.status
				else
					handle_token_exception e
				end
			end
		end
	end
end