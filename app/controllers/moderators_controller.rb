class ModeratorsController < ApplicationController
  def new
    @moderator = Moderator.new
  end
end
