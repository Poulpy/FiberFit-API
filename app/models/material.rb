class Material < ApplicationRecord
  has_many :material_fiber_compositions

  enum :material_type, FiberfitEnums::FIBER_TYPES, prefix: true, validate: true
  enum :yarn_weight_class, FiberfitEnums::YARN_WEIGHT_CLASSES, prefix: true, validate: { allow_nil: true }
  enum :stock_unit, FiberfitEnums::STOCK_UNITS, prefix: true, validate: true
end
