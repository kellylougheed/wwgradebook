class EntriesController < ApplicationController

  before_action :authenticate_user!
  before_action :require_authorized_for_current_student

  def new
    @entry = Entry.new
    @student = current_student
    @course = @student.course
  end

  def create
    @entry = current_student.entries.create(entry_params)
    @entry.student_id = current_student.id
    redirect_to student_path(current_student)
  end

  def show
    @entry = current_entry
    @student = current_student
    @course = @entry.student.course
  end

  def destroy
    @entry = current_entry
    @entry.destroy
    redirect_to student_path(current_student)
  end

  def edit
    @entry = current_entry
    @student = current_student
    @course = @entry.student.course
  end

  def update
    @entry = current_entry
    if @entry.update_attributes(entry_params)
      redirect_to student_path(current_student)
      flash[:notice] = 'The grade entry was successfully updated.'
    else
      redirect_to student_path(current_student)
      flash[:alert] = 'The grade entry could not be updated. Please try again.'
    end
  end

  private

  def require_authorized_for_current_student
    if current_student.course.user != current_user
      render text: 'Unauthorized', status: :unauthorized
    end
  end

  helper_method :current_entry
  def current_entry
    if params[:id].nil?
      @current_entry ||= Entry.find(params[:entry_id])
    else
      @current_entry ||= Entry.find(params[:id])
    end
  end

  helper_method :current_student
  def current_student
    @current_student ||= Student.find(params[:student_id])
  end

  def entry_params
    params.require(:entry).permit(:assignment, :standard1_grade, :standard2_grade, :standard3_grade, :standard4_grade, :standard5_grade, :standard6_grade, :standard7_grade, :standard8_grade, :standard9_grade, :standard10_grade, :standard11_grade, :standard12_grade, :comment)
  end

end
