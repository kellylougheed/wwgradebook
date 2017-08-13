class StudentsController < ApplicationController

  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:create]
  before_action :require_authorized_for_current_student, only: [:show, :edit, :update, :destroy]

  def create
    @course = current_course
    @student = Student.new(student_params)
    @student.course_id = @course.id
    if @student.valid?
      @student.save
      redirect_to course_path(@course)
    else
      redirect_to course_path(@course)
      flash[:alert] = 'Please enter a valid student name.'
    end
  end

  def show
    @student = current_student
    @course = @student.course
  end

  def edit
    @course = current_course
    @student = current_student
  end

  def update
    @course = current_student.course
    if current_student.update_attributes(student_params)
      redirect_to course_path(@course)
      flash[:notice] = 'The student was successfully updated.'
    else
      redirect_to course_path(@course)
      flash[:alert] = 'The student could not be updated because of an invalid name. Please try again.'
    end
  end

  def destroy
    @student = current_student
    @course = @student.course
    @student.destroy
    redirect_to class_path(@course)
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
