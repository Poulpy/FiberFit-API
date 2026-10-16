class ProjectEquipmentRequirementsController < ApplicationController
  before_action :set_project_equipment_requirement, only: %i[ show update destroy ]

  # GET /project_equipment_requirements
  def index
    @project_equipment_requirements = ProjectEquipmentRequirement.all

    render json: @project_equipment_requirements
  end

  # GET /project_equipment_requirements/1
  def show
    render json: @project_equipment_requirement
  end

  # POST /project_equipment_requirements
  def create
    @project_equipment_requirement = ProjectEquipmentRequirement.new(project_equipment_requirement_params)

    if @project_equipment_requirement.save
      render json: @project_equipment_requirement, status: :created, location: @project_equipment_requirement
    else
      render json: @project_equipment_requirement.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /project_equipment_requirements/1
  def update
    if @project_equipment_requirement.update(project_equipment_requirement_params)
      render json: @project_equipment_requirement
    else
      render json: @project_equipment_requirement.errors, status: :unprocessable_content
    end
  end

  # DELETE /project_equipment_requirements/1
  def destroy
    @project_equipment_requirement.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_equipment_requirement
      @project_equipment_requirement = ProjectEquipmentRequirement.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def project_equipment_requirement_params
      params.expect(project_equipment_requirement: [ :project_id, :equipment_id, :required_quantity ])
    end
end
