class PagesController < ApplicationController

	def home
		@courses = Course.where(:featured => true)
	end


end