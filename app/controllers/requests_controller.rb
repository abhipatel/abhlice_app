class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      flash[:success] = 'Thanks for getting involved!'
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def request_params
      params.require(:request).permit(:from, :details)
    end
end