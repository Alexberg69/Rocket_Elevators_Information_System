class Customer < ApplicationRecord
    belongs_to :company_headquarters_address, class_name: "Address" 
end
