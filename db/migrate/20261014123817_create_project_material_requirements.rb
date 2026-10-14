class CreateProjectMaterialRequirements < ActiveRecord::Migration[8.1]
  def change
    create_table :project_material_requirements do |t|
      t.references :project, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.decimal :required_quantity
      t.string :required_unit

      t.timestamps
    end
  end
end
