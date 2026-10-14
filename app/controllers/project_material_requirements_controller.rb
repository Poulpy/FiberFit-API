class ProjectMaterialRequirementsController < ApplicationController
  before_action :set_project_material_requirement, only: %i[ show update destroy ]

  # GET /project_material_requirements
  def index
    @project_material_requirements = ProjectMaterialRequirement.all

    render json: @project_material_requirements
  end

  # GET /project_material_requirements/1
  def show
    render json: @project_material_requirement
  end

  # POST /project_material_requirements
  def create
    @project_material_requirement = ProjectMaterialRequirement.new(project_material_requirement_params)

    if @project_material_requirement.save
      render json: @project_material_requirement, status: :created, location: @project_material_requirement
    else
      render json: @project_material_requirement.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /project_material_requirements/1
  def update
    if @project_material_requirement.update(project_material_requirement_params)
      render json: @project_material_requirement
    else
      render json: @project_material_requirement.errors, status: :unprocessable_content
    end
  end

  # DELETE /project_material_requirements/1
  def destroy
    @project_material_requirement.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_material_requirement
      @project_material_requirement = ProjectMaterialRequirement.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def project_material_requirement_params
      params.expect(project_material_requirement: [ :project_id, :material_id, :required_quantity, :required_unit ])
    end
end
