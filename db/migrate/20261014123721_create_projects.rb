class CreateProjects < ActiveRecord::Migration[8.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :difficulty

      t.timestamps
    end
  end
end
