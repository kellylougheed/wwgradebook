class CoursesController < ApplicationController

  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = current_user.courses.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    if @course.valid?
      @course.save
      redirect_to courses_path
    else
      redirect_to courses_path
      flash[:alert] = 'Please enter a course name.'
    end
  end

  def show
    @course = current_course
    @student = Student.new
  end

  def edit
    @course = current_course
  end

  def update
    @course = current_course
    @course.update_attributes(course_params)
    redirect_to courses_path
  end

  def destroy
    @course = current_course
    @course.destroy
    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:name, :standard1, :standard2, :standard3, :standard4, :standard5, :standard6, :standard7, :standard8, :standard9, :standard10, :standard11, :standard12)
  end

end
