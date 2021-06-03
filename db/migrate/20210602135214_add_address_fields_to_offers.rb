class AddAddressFieldsToOffers < ActiveRecord::Migration[6.0]
  def change
    remove_column :offers, :location
    add_column :offers, :street, :string
    add_column :offers, :house_no, :string
    add_column :offers, :zip_code, :string
    add_column :offers, :city, :string
    add_column :offers, :country, :string
  end
end
