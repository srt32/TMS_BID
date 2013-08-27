class RenameRegistrations < ActiveRecord::Migration
  def self.up
    rename_table :registrations, :attendees
  end

  def self.down
  	rename_table :attendees, :registrations
  end
end
