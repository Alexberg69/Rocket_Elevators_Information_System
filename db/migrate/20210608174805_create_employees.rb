class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t| #employee is wrapper
      t.integer :user_id #foreign key
      t.string :last_name
      t.string :first_name
      t.string :title
    end
  end
end


#pull userID 