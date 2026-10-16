class Equipment < ApplicationRecord
  has_many :project_equipment_requirements, dependent: :destroy

  enum :construction_material, FiberfitEnums::CONSTRUCTION_MATERIALS, prefix: true, validate: true
  enum :equipment_type, FiberfitEnums::EQUIPMENT_TYPES, prefix: true, validate: true
end
