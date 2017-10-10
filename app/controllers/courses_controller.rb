class CoursesController < ActionController::Base

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(course_params)
    redirect_to course_path(Course.last.id)
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
  	@course = Course.find(params[:id])
  end

  def update
  	@course = Course.find(params[:id])
  	@course.update(course_params)
  	redirect_to course_path(params[:id])
  end

  private
  def course_params
  	params.require(:course).permit(:title, :price, :image_url)
  end
end