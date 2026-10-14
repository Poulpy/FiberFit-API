class Equipment < ApplicationRecord
  enum :construction_material, FiberfitEnums::CONSTRUCTION_MATERIALS, prefix: true, validate: true
  enum :equipment_type, FiberfitEnums::EQUIPMENT_TYPES, prefix: true, validate: true
end
