# frozen_string_literal: true

Doorkeeper.configure do
	orm :active_record

	resource_owner_from_credentials do |routes|
		LogInUser.new(email: params[:email], password: params[:password]).execute
	end

	grant_flows %w(password)

	access_token_expires_in nil

	# If you are planning to use Doorkeeper in Rails 5 API-only application, then you might
	# want to use API mode that will skip all the views management and change the way how
	# Doorkeeper responds to a requests.
	#
	api_only
end
