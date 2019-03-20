class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :person, foreign_key: true
      t.references :function, foreign_key: true

      t.timestamps
    end
  end
end
