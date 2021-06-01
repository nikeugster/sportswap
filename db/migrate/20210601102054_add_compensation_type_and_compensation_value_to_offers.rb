class AddCompensationTypeAndCompensationValueToOffers < ActiveRecord::Migration[6.0]
  def change
    remove_column :offers, :compensation
    add_column :offers, :compensation_type, :string
    add_column :offers, :compensation_value, :string
  end
end
