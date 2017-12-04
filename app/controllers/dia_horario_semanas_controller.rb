class DiaHorarioSemanasController < ApplicationController
  before_action :set_dia_horario_semana, only: [:show, :edit, :update, :destroy]

  # GET /dia_horario_semanas
  # GET /dia_horario_semanas.json
  def index
    @dia_horario_semanas = DiaHorarioSemana.all
  end

  # GET /dia_horario_semanas/1
  # GET /dia_horario_semanas/1.json
  def show
  end

  # GET /dia_horario_semanas/new
  def new
    @dia_horario_semana = DiaHorarioSemana.new
  end

  # GET /dia_horario_semanas/1/edit
  def edit
  end

  # POST /dia_horario_semanas
  # POST /dia_horario_semanas.json
  def create
    @dia_horario_semana = DiaHorarioSemana.new(dia_horario_semana_params)

    respond_to do |format|
      if @dia_horario_semana.save
        format.html { redirect_to @dia_horario_semana, notice: 'Dia horario semana was successfully created.' }
        format.json { render :show, status: :created, location: @dia_horario_semana }
      else
        format.html { render :new }
        format.json { render json: @dia_horario_semana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dia_horario_semanas/1
  # PATCH/PUT /dia_horario_semanas/1.json
  def update
    respond_to do |format|
      if @dia_horario_semana.update(dia_horario_semana_params)
        format.html { redirect_to @dia_horario_semana, notice: 'Dia horario semana was successfully updated.' }
        format.json { render :show, status: :ok, location: @dia_horario_semana }
      else
        format.html { render :edit }
        format.json { render json: @dia_horario_semana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dia_horario_semanas/1
  # DELETE /dia_horario_semanas/1.json
  def destroy
    @dia_horario_semana.destroy
    respond_to do |format|
      format.html { redirect_to dia_horario_semanas_url, notice: 'Dia horario semana was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dia_horario_semana
      @dia_horario_semana = DiaHorarioSemana.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dia_horario_semana_params
      params.require(:dia_horario_semana).permit(:fecha_dia, :hora8, :hora9, :hora10, :hora11, :hora12, :hora13, :hora14, :hora15, :hora16, :hora17, :hora18, :hora19, :hora20, :hora21, :hora22, :hora23)
    end
end
