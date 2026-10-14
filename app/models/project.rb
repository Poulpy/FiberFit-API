class Project < ApplicationRecord
  enum :category, FiberfitEnums::CATEGORIES, prefix: true, validate: true
  enum :difficulty, FiberfitEnums::DIFFICULTIES, prefix: true, validate: true

  has_many :project_equipment_requirements
  has_many :project_material_requirements
end
