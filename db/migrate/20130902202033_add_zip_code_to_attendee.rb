class AddZipCodeToAttendee < ActiveRecord::Migration
  def self.up
    add_column :attendees, :zip, :integer
  end

  def self.down
    remove_column :attendees, :zip
  end
end