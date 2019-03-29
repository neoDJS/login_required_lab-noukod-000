class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
      session[:username] = params[:username]

      redirect_to root_path
  end

  def destroy
    session.delete :username
  end
end
