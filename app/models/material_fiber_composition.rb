class MaterialFiberComposition < ApplicationRecord
  belongs_to :material

  enum :fiber_type, FiberfitEnums::FIBER_TYPES, prefix: true, validate: true
end
