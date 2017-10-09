class AdminController < ApplicationController
  def index 
    @enquiry = Enquiry.all 
  end 

  def rooms
  	@rooms = Room.all
  end

  def submit
  	@room = Room.create(room_params)
  	redirect_to authenticated_root_path
  end


  private

  def room_params
  	params.permit(:title, :description, :price_per_night, :url)
  end

end