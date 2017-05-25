class SessionsController < ApplicationController

  def new
    @user = User.new
    @error = nil
  end

  def create
    if !params[:provider].nil?
      oauth_login
    elsif params[:user][:email].blank? || params[:user][:password].blank?
      # redirect to login form with errors
    else
      normal_login
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end

  def normal_login
    @user = User.find_by(email: params[:user][:email])
    if !!@user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to clients_path
    else
      # redirect to login form with errors
    end
  end

end
