class CreateMaterialFiberCompositions < ActiveRecord::Migration[8.1]
  def change
    create_table :material_fiber_compositions do |t|
      t.references :material, null: false, foreign_key: true
      t.string :fiber_type
      t.decimal :percentage

      t.timestamps
    end
  end
end
