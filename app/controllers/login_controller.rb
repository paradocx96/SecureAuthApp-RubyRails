class LoginController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'User Successfully Logged!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logout Successfully!'
  end
end
