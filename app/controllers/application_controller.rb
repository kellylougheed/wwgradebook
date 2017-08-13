class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_authorized_for_current_course
    if current_course.user != current_user
      render text: 'Unauthorized', status: :unauthorized
    end
  end

  helper_method :current_course
  def current_course
    if params[:id].nil?
      @current_course ||= Course.find(params[:course_id])
    else
      @current_course ||= Course.find(params[:id])
    end
  end

end
