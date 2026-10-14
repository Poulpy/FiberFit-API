require "test_helper"

class EquipmentControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get equipments_index_url, as: :json
    assert_response :success
  end

  test "should create equipment" do
    assert_difference("Equipment.count") do
      post equipments_index_url, params: { equipment: { construction_material: @equipment.construction_material, equipments_type: @equipment.equipments_type, name: @equipment.name, size_mm: @equipment.size_mm, stock_quantity: @equipment.stock_quantity, working_width_mm: @equipment.working_width_mm } }, as: :json
    end

    assert_response :created
  end

  test "should show equipment" do
    get equipments_url(@equipment), as: :json
    assert_response :success
  end

  test "should update equipment" do
    patch equipments_url(@equipment), params: { equipment: { construction_material: @equipment.construction_material, equipments_type: @equipment.equipments_type, name: @equipment.name, size_mm: @equipment.size_mm, stock_quantity: @equipment.stock_quantity, working_width_mm: @equipment.working_width_mm } }, as: :json
    assert_response :success
  end

  test "should destroy equipment" do
    assert_difference("Equipment.count", -1) do
      delete equipments_url(@equipment), as: :json
    end

    assert_response :no_content
  end
end
