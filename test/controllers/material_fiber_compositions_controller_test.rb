require "test_helper"

class MaterialFiberCompositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_fiber_composition = material_fiber_compositions(:one)
  end

  test "should get index" do
    get material_fiber_compositions_url, as: :json
    assert_response :success
  end

  test "should create material_fiber_composition" do
    assert_difference("MaterialFiberComposition.count") do
      post material_fiber_compositions_url, params: { material_fiber_composition: { fiber_type: @material_fiber_composition.fiber_type, material_id: @material_fiber_composition.material_id, percentage: @material_fiber_composition.percentage } }, as: :json
    end

    assert_response :created
  end

  test "should show material_fiber_composition" do
    get material_fiber_composition_url(@material_fiber_composition), as: :json
    assert_response :success
  end

  test "should update material_fiber_composition" do
    patch material_fiber_composition_url(@material_fiber_composition), params: { material_fiber_composition: { fiber_type: @material_fiber_composition.fiber_type, material_id: @material_fiber_composition.material_id, percentage: @material_fiber_composition.percentage } }, as: :json
    assert_response :success
  end

  test "should destroy material_fiber_composition" do
    assert_difference("MaterialFiberComposition.count", -1) do
      delete material_fiber_composition_url(@material_fiber_composition), as: :json
    end

    assert_response :no_content
  end
end
