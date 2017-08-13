class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    Course.create(course_params)
    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:name, :standard1, :standard2, :standard3, :standard4, :standard5, :standard6, :standard7, :standard8, :standard9, :standard10, :standard11, :standard12)
  end

end
