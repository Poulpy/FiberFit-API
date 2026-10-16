class ProjectEquipmentRequirement < ApplicationRecord
  belongs_to :project
  belongs_to :equipment
end
