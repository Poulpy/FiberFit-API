# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
materials = [{
  name: "soho",
  material_type: "wool",
  color: "pink",
  stock_quantity: 1,
  stock_unit: "skein",
  length_per_unit_m: 1,
  yarn_weight_class: "lace_0"
}]

Material.create(materials)
