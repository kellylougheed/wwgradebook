class StudentsController < ApplicationController

  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:create]
  before_action :require_authorized_for_current_student, only: [:show, :edit, :update, :destroy]

  def create
    @course = current_course
    @course.students.create(student_params.merge(course_id: @course.id))
    redirect_to course_path(@course)
  end

  def show
    @student = current_student
    @course = @student.course
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def require_authorized_for_current_student
    if current_student.course.user != current_user
      render text: 'Unauthorized', status: :unauthorized
    end
  end

  helper_method :current_student
  def current_student
    @current_student ||= Student.find(params[:id])
  end

end
