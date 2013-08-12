class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :operator
      t.date :departing
      t.date :returning
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
