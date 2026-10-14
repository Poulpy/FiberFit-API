require "test_helper"

class MaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material = materials(:one)
  end

  test "should get index" do
    get materials_url, as: :json
    assert_response :success
  end

  test "should create material" do
    assert_difference("Material.count") do
      post materials_url, params: { material: { color: @material.color, length_per_unit_m: @material.length_per_unit_m, material_type: @material.material_type, name: @material.name, stock_quantity: @material.stock_quantity, stock_unit: @material.stock_unit, yarn_weight_class: @material.yarn_weight_class } }, as: :json
    end

    assert_response :created
  end

  test "should show material" do
    get material_url(@material), as: :json
    assert_response :success
  end

  test "should update material" do
    patch material_url(@material), params: { material: { color: @material.color, length_per_unit_m: @material.length_per_unit_m, material_type: @material.material_type, name: @material.name, stock_quantity: @material.stock_quantity, stock_unit: @material.stock_unit, yarn_weight_class: @material.yarn_weight_class } }, as: :json
    assert_response :success
  end

  test "should destroy material" do
    assert_difference("Material.count", -1) do
      delete material_url(@material), as: :json
    end

    assert_response :no_content
  end
end
