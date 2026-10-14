class ProjectMaterialRequirement < ApplicationRecord
  belongs_to :project
  belongs_to :material

  enum :required_unit, FiberfitEnums::MEASUREMENT_UNITS, prefix: true, validate: true
end
