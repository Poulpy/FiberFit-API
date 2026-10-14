class MaterialFiberCompositionsController < ApplicationController
  before_action :set_material_fiber_composition, only: %i[ show update destroy ]

  # GET /material_fiber_compositions
  def index
    @material_fiber_compositions = MaterialFiberComposition.all

    render json: @material_fiber_compositions
  end

  # GET /material_fiber_compositions/1
  def show
    render json: @material_fiber_composition
  end

  # POST /material_fiber_compositions
  def create
    @material_fiber_composition = MaterialFiberComposition.new(material_fiber_composition_params)

    if @material_fiber_composition.save
      render json: @material_fiber_composition, status: :created, location: @material_fiber_composition
    else
      render json: @material_fiber_composition.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /material_fiber_compositions/1
  def update
    if @material_fiber_composition.update(material_fiber_composition_params)
      render json: @material_fiber_composition
    else
      render json: @material_fiber_composition.errors, status: :unprocessable_content
    end
  end

  # DELETE /material_fiber_compositions/1
  def destroy
    @material_fiber_composition.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_fiber_composition
      @material_fiber_composition = MaterialFiberComposition.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def material_fiber_composition_params
      params.expect(material_fiber_composition: [ :material_id, :fiber_type, :percentage ])
    end
end
