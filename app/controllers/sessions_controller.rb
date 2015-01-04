class SessionsController < ApplicationController

  def new
  end

  def create
    password = params[:session][:password]
    if password && password == 'AAJun15'
      sign_in
      flash[:success] = 'Thanks for getting involved!'
      redirect_to root_path
    else
      flash[:danger] = 'Invalid password'
      redirect_to root_path
    end
  end

  def destroy
    sign_out
    flash[:success] = 'Logged out'
    redirect_to root_path
  end
end
