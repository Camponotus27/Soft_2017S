class HorarioDiaController < ApplicationController
  before_action :set_horario_dium, only: [:show, :edit, :update, :destroy]

  # GET /horario_dia
  # GET /horario_dia.json
  def index
    @horario_dia = HorarioDia.all
  end

  # GET /horario_dia/1
  # GET /horario_dia/1.json
  def show
  end

  # GET /horario_dia/new
  def new
    @horario_dium = HorarioDia.new
  end

  # GET /horario_dia/1/edit
  def edit
  end

  # POST /horario_dia
  # POST /horario_dia.json
  def create
    @horario_dium = HorarioDia.new(horario_dium_params)

    respond_to do |format|
      if @horario_dium.save
        format.html { redirect_to @horario_dium, notice: 'Horario dia was successfully created.' }
        format.json { render :show, status: :created, location: @horario_dium }
      else
        format.html { render :new }
        format.json { render json: @horario_dium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horario_dia/1
  # PATCH/PUT /horario_dia/1.json
  def update
    respond_to do |format|
      if @horario_dium.update(horario_dium_params)
        format.html { redirect_to @horario_dium, notice: 'Horario dia was successfully updated.' }
        format.json { render :show, status: :ok, location: @horario_dium }
      else
        format.html { render :edit }
        format.json { render json: @horario_dium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horario_dia/1
  # DELETE /horario_dia/1.json
  def destroy
    @horario_dium.destroy
    respond_to do |format|
      format.html { redirect_to horario_dia_index_url, notice: 'Horario dia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horario_dium
      @horario_dium = HorarioDia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horario_dium_params
      params.require(:horario_dium).permit(:Hora1, :Hora2, :Hora3, :Hora4, :Hora5, :Hora6, :Hora7, :Hora8, :Hora7, :Hora9, :Hora10, :Hora11, :Hora12, :Hora13, :Hora14, :Hora15, :Hora16, :Hora17, :Hora18, :Hora19, :Hora20, :Hora21, :Hora22, :Hora23, :Hora24)
    end
end
