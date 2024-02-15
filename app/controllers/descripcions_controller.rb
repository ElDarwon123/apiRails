class DescripcionsController < ApplicationController
  before_action :set_descripcion, only: %i[ show update destroy ]

  # GET /descripcions
  def index
    @descripcions = Descripcion.all

    render json: @descripcions
  end

  # GET /descripcions/1
  def show
    render json: @descripcion.to_json(only: [:id, :texto])
  end

  # POST /descripcions
  def create
    @descripcion = Descripcion.new(descripcion_params)

    if @descripcion.save
      render json: @descripcion, status: :created, location: @descripcion
    else
      render json: @descripcion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /descripcions/1
  def update
    if @descripcion.update(descripcion_params)
      render json: @descripcion
    else
      render json: @descripcion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /descripcions/1
  def destroy
    @descripcion.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descripcion
      @descripcion = Descripcion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def descripcion_params
      params.require(:descripcion).permit(:test)
    end
end
