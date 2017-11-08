class HorarioMesController < ApplicationController
  before_action :set_horario_me, only: [:show, :edit, :update, :destroy]

  # GET /horario_mes
  # GET /horario_mes.json
  def index
    @horario_mes = HorarioMes.all
  end

  # GET /horario_mes/1
  # GET /horario_mes/1.json
  def show
  end

  # GET /horario_mes/new
  def new
    @horario_me = HorarioMes.new
  end

  # GET /horario_mes/1/edit
  def edit
  end

  # POST /horario_mes
  # POST /horario_mes.json
  def create
    @horario_me = HorarioMes.new(horario_me_params)

    respond_to do |format|
      if @horario_me.save
        format.html { redirect_to @horario_me, notice: 'Horario mes was successfully created.' }
        format.json { render :show, status: :created, location: @horario_me }
      else
        format.html { render :new }
        format.json { render json: @horario_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horario_mes/1
  # PATCH/PUT /horario_mes/1.json
  def update
    respond_to do |format|
      if @horario_me.update(horario_me_params)
        format.html { redirect_to @horario_me, notice: 'Horario mes was successfully updated.' }
        format.json { render :show, status: :ok, location: @horario_me }
      else
        format.html { render :edit }
        format.json { render json: @horario_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horario_mes/1
  # DELETE /horario_mes/1.json
  def destroy
    @horario_me.destroy
    respond_to do |format|
      format.html { redirect_to horario_mes_index_url, notice: 'Horario mes was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horario_me
      @horario_me = HorarioMes.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horario_me_params
      params.require(:horario_me).permit(:horario, :descripcion)
    end
end
