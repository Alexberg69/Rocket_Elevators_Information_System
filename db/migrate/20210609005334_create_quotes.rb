class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :product_line
      t.binary :number_of_elevator
      t.binary :unit_price_of_each_elevator
      t.binary :total_price_of_elevators
      t.binary :installation_fees
      t.binary :final_price

      t.timestamps
    end
  end
end
