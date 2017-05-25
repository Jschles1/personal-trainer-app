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

end
