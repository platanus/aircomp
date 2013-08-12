class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string :direction
      t.string :rate_type
      t.string :rate_desc
      t.integer :rate
      t.string :flight
      t.belongs_to :trip

      t.timestamps
    end
    add_index :rates, :trip_id
  end
end
