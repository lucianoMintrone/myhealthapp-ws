class UsersController < ApplicationController
	def sign_up
		render_object SignUpUser.new(email: params[:email], medical_plan_number: params[:medical_plan_number]).execute
	end
end
