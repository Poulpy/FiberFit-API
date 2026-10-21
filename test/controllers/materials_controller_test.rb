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
      post materials_url, params: { material: { color: @material.color, length_per_unit_m: @material.length_per_unit_m, supply_type: @material.supply_type, name: @material.name, stock_quantity: @material.stock_quantity, stock_unit: @material.stock_unit, yarn_weight_class: @material.yarn_weight_class } }, as: :json
    end

    assert_response :created
  end

  test "should show material" do
    get material_url(@material), as: :json
    assert_response :success
  end

  test "should update material" do
    patch material_url(@material), params: { material: { color: @material.color, length_per_unit_m: @material.length_per_unit_m, supply_type: @material.supply_type, name: @material.name, stock_quantity: @material.stock_quantity, stock_unit: @material.stock_unit, yarn_weight_class: @material.yarn_weight_class } }, as: :json
    assert_response :success
  end

  test "should destroy material" do
    assert_difference("Material.count", -1) do
      delete material_url(@material), as: :json
    end

    assert_response :no_content
  end

  test "index returns all materials as JSON" do
    skip "À implémenter"
  end

  test "show returns the requested material as JSON" do
    skip "À implémenter"
  end

  test "create returns the created material as JSON" do
    skip "À implémenter"
  end

  test "should not create material with invalid parameters" do
    skip "À implémenter"
  end

  test "create returns HTTP 422 when validation fails" do
    skip "À implémenter"
  end

  test "create returns validation errors as JSON" do
    skip "À implémenter"
  end

  test "update returns the updated material as JSON" do
    skip "À implémenter"
  end

  test "should not update material with invalid parameters" do
    skip "À implémenter"
  end

  test "update returns HTTP 422 when validation fails" do
    skip "À implémenter"
  end

  test "show returns HTTP 404 for an unknown material" do
    skip "À implémenter"
  end

  test "destroy returns HTTP 204" do
    skip "À implémenter"
  end
end
