class EquipmentController < ApplicationController
  before_action :set_equipment, only: %i[ show update destroy ]

  # GET /equipment
  def index
    @equipment = Equipment.all

    render json: @equipment
  end

  # GET /equipment/1
  def show
    render json: @equipment
  end

  # POST /equipment
  def create
    @equipment = Equipment.new(equipment_params)

    if @equipment.save
      render json: @equipment, status: :created, location: @equipment
    else
      render json: @equipment.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /equipment/1
  def update
    if @equipment.update(equipment_params)
      render json: @equipment
    else
      render json: @equipment.errors, status: :unprocessable_content
    end
  end

  # DELETE /equipment/1
  def destroy
    @equipment.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment
      @equipment = Equipment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def equipment_params
      params.expect(equipment: [ :name, :equipment_type, :construction_material, :size_mm, :working_width_mm, :stock_quantity ])
    end
end
