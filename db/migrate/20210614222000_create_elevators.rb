class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.integer :column_id
      t.integer :serial_number
      t.string :type
      t.string :status
      t.string :date_of_commissioning
      t.string :date_of_last_inspection
      t.string :certificate_of_inspection
      t.string :information
      t.text :notes

      t.timestamps
    end
  end
end