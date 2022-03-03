class CanalVendasController < ApplicationController
  before_action :set_canal_venda, only: %i[ show update destroy ]

  # GET /canais_vendas
  def index
    @canais_vendas = CanalVenda.all

    render json: @canais_vendas
  end

  # GET /canais_vendas/1
  def show
    render json: @canal_venda
  end

  # POST /canais_vendas
  def create
    @canal_venda = CanalVenda.new(canal_venda_params)

    if @canal_venda.save
      render json: @canal_venda, status: :created, location: @canal_venda
    else
      render json: @canal_venda.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /canais_vendas/1
  def update
    if @canal_venda.update(canal_venda_params)
      render json: @canal_venda
    else
      render json: @canal_venda.errors, status: :unprocessable_entity
    end
  end

  # DELETE /canais_vendas/1
  def destroy
    @canal_venda.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canal_venda
      @canal_venda = CanalVenda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def canal_venda_params
      params.fetch(:canal_venda, {})
    end
end
