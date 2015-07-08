class SessionsController < ApplicationController

  ENTRY_PASSWORD = ENV['ENTRY_PASSWORD']

  def new
  end

  def create
    password = params[:session][:password]
    if password && password == ENTRY_PASSWORD
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
