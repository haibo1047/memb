class SessionsController < ApplicationController
  def new
  end

  def create
    user = SysUser.find_by(userName: params[:session][:userName].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      redirect_to user
    else
      flash[:danger] = 'Invalid userName/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
  end
end
