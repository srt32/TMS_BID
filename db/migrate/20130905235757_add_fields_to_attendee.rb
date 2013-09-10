class AddFieldsToAttendee < ActiveRecord::Migration
  def self.up
    add_column :attendees, :follow_up, :boolean, :default => false
    add_column :attendees, :virtual, :boolean, :default => false
  end

  def self.down
    drop_column :attendees, :follow_up
    drop_column :attendees, :virtual
  end
end