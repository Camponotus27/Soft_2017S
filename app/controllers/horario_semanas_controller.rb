class HorarioSemanasController < ApplicationController
  before_action :set_horario_semana, only: [:show, :edit, :update, :destroy]

  # GET /horario_semanas
  # GET /horario_semanas.json
  def index
    @horario_semanas = HorarioSemana.all
  end

  # GET /horario_semanas/1
  # GET /horario_semanas/1.json
  def show
  end

  # GET /horario_semanas/new
  def new
    @horario_semana = HorarioSemana.new
  end

  # GET /horario_semanas/1/edit
  def edit
  end

  # POST /horario_semanas
  # POST /horario_semanas.json
  def create
    @horario_semana = HorarioSemana.new(horario_semana_params)

    respond_to do |format|
      if @horario_semana.save
        format.html { redirect_to @horario_semana, notice: 'Horario semana was successfully created.' }
        format.json { render :show, status: :created, location: @horario_semana }
      else
        format.html { render :new }
        format.json { render json: @horario_semana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horario_semanas/1
  # PATCH/PUT /horario_semanas/1.json
  def update
    respond_to do |format|
      if @horario_semana.update(horario_semana_params)
        format.html { redirect_to @horario_semana, notice: 'Horario semana was successfully updated.' }
        format.json { render :show, status: :ok, location: @horario_semana }
      else
        format.html { render :edit }
        format.json { render json: @horario_semana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horario_semanas/1
  # DELETE /horario_semanas/1.json
  def destroy
    @horario_semana.destroy
    respond_to do |format|
      format.html { redirect_to horario_semanas_url, notice: 'Horario semana was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horario_semana
      @horario_semana = HorarioSemana.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horario_semana_params
      params.require(:horario_semana).permit(:nombre, :fecha_inicio, :fecha_termino, :lunes_id_id, :martes_id_id, :miercoles_id_id, :jueves_id_id, :viernes_id_id, :sabado_id_id, :domingo_id_id)
    end
end
