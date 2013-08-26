class CreateRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.string :name
      t.string :semester_season
      t.integer :semester_year
      t.string :address
      t.string :phone
      t.string :email
      t.integer :attendees

      t.timestamps
    end
  end

  def self.down
    drop_table :registrations
  end
end
