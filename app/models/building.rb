class Building < ApplicationRecord
    belongs_to :address_of_the_building, class_name: "Address"
    belongs_to :customer, class_name: "Customer"
    has_one :building_detail
    has_one :battery 
end
