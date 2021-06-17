class Column < ApplicationRecord
    has_many :elevator
    belongs_to :battery, class_name: "Battery", optional: true
end
