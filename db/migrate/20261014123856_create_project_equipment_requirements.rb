class CreateProjectEquipmentRequirements < ActiveRecord::Migration[8.1]
  def change
    create_table :project_equipment_requirements do |t|
      t.references :project, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true
      t.decimal :required_quantity

      t.timestamps
    end
  end
end
