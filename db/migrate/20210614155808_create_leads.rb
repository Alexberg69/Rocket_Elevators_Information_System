class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :contact_name
      t.string :company_name
      t.string :email
      t.string :phone_number
      t.string :project_name
      t.string :project_description
      t.string :department_in_charge_of_the_elevators
      t.string :message
      t.binary :binary_file

      t.timestamps
    end
  end
end
