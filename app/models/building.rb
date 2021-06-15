class Building < ApplicationRecord
    belongs_to :address_of_the_building, class_name: "Address" 
end
