class TipoHorasController < ApplicationController
  before_action :set_tipo_hora, only: [:show, :edit, :update, :destroy]

  # GET /tipo_horas
  # GET /tipo_horas.json
  def index
    @tipo_horas = TipoHora.all
  end

  # GET /tipo_horas/1
  # GET /tipo_horas/1.json
  def show
  end

  # GET /tipo_horas/new
  def new
    @tipo_hora = TipoHora.new
  end

  # GET /tipo_horas/1/edit
  def edit
  end

  # POST /tipo_horas
  # POST /tipo_horas.json
  def create
    @tipo_hora = TipoHora.new(tipo_hora_params)

    respond_to do |format|
      if @tipo_hora.save
        format.html { redirect_to @tipo_hora, notice: 'Tipo hora was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_hora }
      else
        format.html { render :new }
        format.json { render json: @tipo_hora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_horas/1
  # PATCH/PUT /tipo_horas/1.json
  def update
    respond_to do |format|
      if @tipo_hora.update(tipo_hora_params)
        format.html { redirect_to @tipo_hora, notice: 'Tipo hora was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_hora }
      else
        format.html { render :edit }
        format.json { render json: @tipo_hora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_horas/1
  # DELETE /tipo_horas/1.json
  def destroy
    @tipo_hora.destroy
    respond_to do |format|
      format.html { redirect_to tipo_horas_url, notice: 'Tipo hora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_hora
      @tipo_hora = TipoHora.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_hora_params
      params.require(:tipo_hora).permit(:descripcion, :dueÇño_hora)
    end
end
