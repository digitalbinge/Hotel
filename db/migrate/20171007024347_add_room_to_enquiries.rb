class AddRoomToEnquiries < ActiveRecord::Migration[5.1]
  def change
    add_reference :enquiries, :room, foreign_key: true
  end
end
