class RemoveAddAddressLocation < ActiveRecord::Migration
  def self.up
  	remove_column :attendees, :location_id
    remove_column :attendees, :address
    add_column :attendees, :location_id, :integer
  end

  def self.down
    add_column :attendees, :address, :string
    remove_column :attendees, :location_id
  end
end