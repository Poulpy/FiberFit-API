require "test_helper"

class ProjectMaterialRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_material_requirement = project_material_requirements(:one)
  end

  test "should get index" do
    get project_material_requirements_url, as: :json
    assert_response :success
  end

  test "should create project_material_requirement" do
    assert_difference("ProjectMaterialRequirement.count") do
      post project_material_requirements_url, params: { project_material_requirement: { material_id: @project_material_requirement.material_id, project_id: @project_material_requirement.project_id, required_quantity: @project_material_requirement.required_quantity, required_unit: @project_material_requirement.required_unit } }, as: :json
    end

    assert_response :created
  end

  test "should show project_material_requirement" do
    get project_material_requirement_url(@project_material_requirement), as: :json
    assert_response :success
  end

  test "should update project_material_requirement" do
    patch project_material_requirement_url(@project_material_requirement), params: { project_material_requirement: { material_id: @project_material_requirement.material_id, project_id: @project_material_requirement.project_id, required_quantity: @project_material_requirement.required_quantity, required_unit: @project_material_requirement.required_unit } }, as: :json
    assert_response :success
  end

  test "should destroy project_material_requirement" do
    assert_difference("ProjectMaterialRequirement.count", -1) do
      delete project_material_requirement_url(@project_material_requirement), as: :json
    end

    assert_response :no_content
  end
end
