class ModeratorsController < ApplicationController
  before_action :verify_login, only: [:show]

  def new
    @moderator = Moderator.new
  end

  def create
    @moderator = Moderator.new(moderator_params)
    if @moderator.save
      session[:current_moderator_id] = @moderator.id
      flash[:success] = "Moderator #{@moderator.firstname} created!"
      redirect_to @moderator
    else
      flash[:error] = "An error occured in creatin Moderator"
      render "new"
    end
  end

  def show
    @moderator = Moderator.find_by(id: params[:current_moderator_id])
  end
end

private

def moderator_params
  params.require(:moderator).permit(
    :firstname,
    :lastname,
    :email,
    :password,
    :password_confirmation,
    :super
  )
end
