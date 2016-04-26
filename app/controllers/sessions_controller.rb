class SessionsController < ApplicationController
  def home
  end

  def new
    if logged_in?
      redirect_to users_path
    else
      @user = User.new
      @users = User.all
    end
  end

  def create
    @user = User.find(params[:user][:id])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to signin_path
    end
  end

    def destroy
      reset_session
      redirect_to root_path
    end

  end
