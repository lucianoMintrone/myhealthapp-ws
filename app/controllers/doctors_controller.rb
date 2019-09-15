class DoctorsController < ApplicationController
	def search
		doctors = Doctor.includes(:hospital).references(:hospital).where(specialty: params[:specialty])
			.within(params[:radius], :origin => [params[:latitude], params[:longitude]])
		render_collection doctors
	end
end
