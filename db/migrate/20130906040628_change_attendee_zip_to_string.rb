class ChangeAttendeeZipToString < ActiveRecord::Migration
  def self.up
    remove_column :attendees, :zip
    add_column :attendees, :zip, :string
  end

  def self.down
    remove_column :attendees, :zip
    add_column :attendees, :zip, :integer
  end
end
