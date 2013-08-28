class AddHostToAttendees < ActiveRecord::Migration
  def self.up
    add_column :attendees, :host, :boolean, :default => false
  end

  def self.down
    remove_column :attendees, :host
  end
end
