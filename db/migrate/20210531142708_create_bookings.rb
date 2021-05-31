class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
