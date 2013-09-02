class ChangeAddressToLocationId < ActiveRecord::Migration
  def self.up
    Attendee.update_all(:address => 0)
    rename_column :attendees, :address, :location_id
    change_column :attendees, :location_id, :integer
  end

  def self.down
    rename_column :attendees, :location_id, :address
    change_column :attendees, :location_id, :string
  end
end
