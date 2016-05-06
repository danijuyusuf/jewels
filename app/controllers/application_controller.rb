class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :log_in

  def verify_login
    redirect_to root_path unless current_moderator.id
  end

  def log_in
    current_moderator
  end

  def current_moderator
    Moderator.find_by(
      id: session[:current_moderator_id]
    )
  end
end
