class CreateBusStops < ActiveRecord::Migration
  def change
    create_table :bus_stops, id: false do |t|
      t.string :name
      t.decimal :lat
      t.decimal :long
      t.integer :bus_route_id
      t.integer :stop_num

      t.timestamps
    end

    add_index :bus_stops, :stop_num
    add_index :bus_stops, :bus_route_id
  end
end
