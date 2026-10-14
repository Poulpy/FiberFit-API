require "test_helper"

class ProjectEquipmentRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_equipment_requirement = project_equipment_requirements(:one)
  end

  test "should get index" do
    get project_equipment_requirements_url, as: :json
    assert_response :success
  end

  test "should create project_equipment_requirement" do
    assert_difference("ProjectEquipmentRequirement.count") do
      post project_equipment_requirements_url, params: { project_equipment_requirement: { material_id_id: @project_equipment_requirement.material_id_id, project_id_id: @project_equipment_requirement.project_id_id, required_quantity: @project_equipment_requirement.required_quantity } }, as: :json
    end

    assert_response :created
  end

  test "should show project_equipment_requirement" do
    get project_equipment_requirement_url(@project_equipment_requirement), as: :json
    assert_response :success
  end

  test "should update project_equipment_requirement" do
    patch project_equipment_requirement_url(@project_equipment_requirement), params: { project_equipment_requirement: { material_id_id: @project_equipment_requirement.material_id_id, project_id_id: @project_equipment_requirement.project_id_id, required_quantity: @project_equipment_requirement.required_quantity } }, as: :json
    assert_response :success
  end

  test "should destroy project_equipment_requirement" do
    assert_difference("ProjectEquipmentRequirement.count", -1) do
      delete project_equipment_requirement_url(@project_equipment_requirement), as: :json
    end

    assert_response :no_content
  end
end
