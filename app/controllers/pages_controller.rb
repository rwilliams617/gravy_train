class PagesController < ActionController::Base

	def home
		@courses = Course.all
	end


end