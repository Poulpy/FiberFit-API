class Material < ApplicationRecord
  has_many :material_fiber_compositions, dependent: :destroy
  has_many :project_material_requirements, dependent: :destroy

  enum :supply_type, FiberfitEnums::SUPPLY_TYPES, prefix: true, validate: true
  enum :yarn_weight_class, FiberfitEnums::YARN_WEIGHT_CLASSES, prefix: true, validate: { allow_nil: true }
  enum :stock_unit, FiberfitEnums::STOCK_UNITS, prefix: true, validate: true

  validates :name, presence: true
  validates :stock_quantity, comparison: { greater_than_or_equal_to: 0 }
  validates :length_per_unit_m,
    comparison: { greater_than_or_equal_to: 0 },
    allow_nil: true
end
