class CreateMaterials < ActiveRecord::Migration[8.1]
  def change
    create_table :materials do |t|
      t.string :name
      t.string :supply_type
      t.string :color
      t.decimal :stock_quantity
      t.string :stock_unit
      t.decimal :length_per_unit_m
      t.string :yarn_weight_class

      t.timestamps
    end
  end
end
