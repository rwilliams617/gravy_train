class CoursesController < ApplicationController

	before_action :find_course, only: [:show, :edit, :update]

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    redirect_to course_path(@course), notice: "course saved"
  end

  def update
  	@course.update(course_params)
  	redirect_to course_path(params[:id]), notice: "course updated"
  end

  private
  def course_params
  	params.require(:course).permit(:title, :price, :image_url)
  end

  def find_course
  	@course = Course.find(params[:id])
  end
end