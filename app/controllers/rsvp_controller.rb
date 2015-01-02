class RsvpController < ApplicationController
  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      flash[:success] = 'Thanks for letting us know if you are coming!'
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def rsvp_params
      params.require(:rsvp).permit(:names, :is_attending, :comments)
    end
end
