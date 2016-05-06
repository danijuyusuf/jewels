class SessionsController < ApplicationController
  def new
  end

  def create
    moderator = Moderator.find_by(email: params[:session][:email])
    if moderator && moderator.authenticate(params[:session][:password])
      session[:current_moderator_id] = moderator.id
      redirect_to current_moderator
    else
      flash.now[:error] = "Username or Password Incorrect"
      render :new
    end
  end

  def destroy
    @current_moderator = nil
    session.delete :current_moderator_id
    redirect_to root_path, notice: "Logged out Successfully!"
  end
end
