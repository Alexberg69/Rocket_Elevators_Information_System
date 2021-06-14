class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.integer :building_id
      t.string :type
      t.string :status
      t.integer :employee_id
      t.string :date_of_commissioning
      t.string :date_of_last_inspection
      t.string :certificate_of_operations
      t.string :information
      t.text :notes

      t.timestamps
    end
  end
end
