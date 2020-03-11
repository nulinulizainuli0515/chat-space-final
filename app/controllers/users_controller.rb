class UsersController < ApplicationController

  def index
    @users = User.search(params[:keyword], current_user.id)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def edit
  end
  
end
