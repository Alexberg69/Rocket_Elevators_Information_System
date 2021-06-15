json.extract! lead, :id, :contact_name, :company_name, :email, :phone_number, :project_name, :project_description, :department_in_charge_of_the_elevators, :message, :binary_file, :created_at, :updated_at
json.url lead_url(lead, format: :json)
