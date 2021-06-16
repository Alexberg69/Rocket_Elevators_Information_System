class Customer < ApplicationRecord
    belongs_to :company_headquarters_address, class_name: "Address"
    belongs_to :user, class_name: "User"
    has_one :building
end
