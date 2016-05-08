class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_moderator

  def verify_login
    redirect_to new_session_path unless current_moderator
  end

  def current_moderator
    Moderator.find_by(
      id: session[:current_moderator_id]
    )
  end
end
