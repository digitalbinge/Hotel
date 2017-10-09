class PagesController < ApplicationController
  def rooms
  	@rooms = Room.all
  end

  def submit
  	@enquiry = Enquiry.create(enquiry_params)
  	redirect_to "/pages/thankyou"
  end

  def contact
    @room_options = Room.all.map{|room| [ room.title, room.id ] }
  end

  private

  def enquiry_params
  	params.permit(:name, :email, :phone, :message, :room_id)
  end
end
