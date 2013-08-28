class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :city_name
      t.string :host_name
      t.string :address
      t.string :description
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
