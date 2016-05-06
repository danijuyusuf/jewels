class SessionsController < ApplicationController
  def new
  end

  def create
    moderator = Moderator.find_by(email: params[:session][:email])
    if moderator && moderator.authenticate(params[:session][:password])
      session[:current_moderator_id] = moderator.id
      redirect_to current_moderator
    else
      flash[:error] = "Username or Password Incorrect"
      render :new
    end
  end
end
