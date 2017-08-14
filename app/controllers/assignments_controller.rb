class AssignmentsController < ApplicationController

  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:create]
  before_action :require_authorized_for_current_assignment, only: [:show, :edit, :update, :destroy]

  def new
    @course = current_course
    @assignment = Assignment.new
  end

  def create
    @course = current_course
    @assignment = Assignment.new(assignment_params)
    @assignment.course_id = @course.id
    if @assignment.valid?
      @assignment.save
      redirect_to course_path(@course)
    else
      redirect_to course_path(@course)
      flash[:alert] = 'Please enter a valid assignment name.'
    end
  end

  def show
    @assignment = current_assignment
    @course = @assignment.course
  end

  def edit
    @assignment = current_assignment
    @course = @assignment.course
  end

  def update
    @assignment = current_assignment
    if current_assignment.update_attributes(assignment_params)
      redirect_to assignment_path(@assignment)
      flash[:notice] = 'The assignment was successfully updated.'
    else
      redirect_to assignment_path(@assignment)
      flash[:alert] = 'The assignment could not be updated because of an invalid name. Please try again.'
    end
  end

  def destroy
    @assignment = current_assignment
    @course = @assignment.course
    @assignment.destroy
    redirect_to course_path(@course)
  end

  private

  def assignment_params
    params.require(:assignment).permit(:name, :has_standard1, :has_standard2, :has_standard3, :has_standard4, :has_standard5, :has_standard6, :has_standard7, :has_standard8, :has_standard9, :has_standard10, :has_standard11, :has_standard12)
  end

  def require_authorized_for_current_assignment
    if current_assignment.course.user != current_user
      render text: 'Unauthorized', status: :unauthorized
    end
  end

  helper_method :current_assignment
  def current_assignment
    @current_assignment ||= Assignment.find(params[:id])
  end

end
