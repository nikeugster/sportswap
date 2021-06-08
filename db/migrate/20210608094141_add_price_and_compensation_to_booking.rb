class AddPriceAndCompensationToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :compensation_type, :string
    add_column :bookings, :compensation_value, :string
  end
end
