class Battery < ApplicationRecord
    belongs_to :building, class_name: "Building"
    belongs_to :employee, class_name: "Employee"
    has_many :column
end
