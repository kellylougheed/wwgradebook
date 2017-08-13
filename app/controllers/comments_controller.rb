class CommentsController < ApplicationController

  before_action :authenticate_user!
  before_action :require_authorized_for_current_student

  def create
    @comment = current_student.comments.create(comment_params)
    redirect_to student_path(current_student)
  end

  def destroy
    @comment = current_comment
    @comment.destroy
    redirect_to student_path(current_student)
  end

  def edit
    @comment = current_comment
  end

  def update
    @comment = current_comment
    if @comment.update_attributes(comment_params)
      redirect_to student_path(current_student)
    else
      redirect_to student_path(current_student)
      flash[:alert] = 'The comment could not be updated because of invalid text. Please try again.'
    end
  end

  private

  def require_authorized_for_current_student
    if current_student.course.user != current_user
      render text: 'Unauthorized', status: :unauthorized
    end
  end

  helper_method :current_comment
  def current_comment
    if params[:id].nil?
      @current_comment ||= Comment.find(params[:comment_id])
    else
      @current_comment ||= Comment.find(params[:id])
    end
  end

  helper_method :current_student
  def current_student
    @current_student ||= Student.find(params[:student_id])
  end

  def comment_params
    params.require(:comment).permit(:message, :friendly_date, :auto_send)
  end

end
