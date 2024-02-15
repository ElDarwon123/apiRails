class AlimentosController < ApplicationController
  before_action :set_alimento, only: %i[ show update destroy ]

  # GET /alimentos
  def index
    @alimentos = Alimento.all

    render json: @alimentos
  end

  # GET /alimentos/1
  def show
    render json: @alimento.to_json(only: [:id, :nombre])
  end

  # POST /alimentos
  def create
    @alimento = Alimento.new(alimento_params)

    if @alimento.save
      render json: @alimento, status: :created, location: @alimento
    else
      render json: @alimento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /alimentos/1
  def update
    if @alimento.update(alimento_params)
      render json: @alimento
    else
      render json: @alimento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alimentos/1
  def destroy
    @alimento.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alimento
      @alimento = Alimento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alimento_params
      params.require(:alimento).permit(:nombre)
    end
end
