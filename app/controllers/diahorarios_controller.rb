class DiahorariosController < ApplicationController
  before_action :set_diahorario, only: [:show, :edit, :update, :destroy]

  # GET /diahorarios
  # GET /diahorarios.json
  def index
    @diahorarios = Diahorario.all
  end

  # GET /diahorarios/1
  # GET /diahorarios/1.json
  def show
  end

  # GET /diahorarios/new
  def new
    @diahorario = Diahorario.new
  end

  # GET /diahorarios/1/edit
  def edit
  end

  # POST /diahorarios
  # POST /diahorarios.json
  def create
    @diahorario = Diahorario.new(diahorario_params)

    respond_to do |format|
      if @diahorario.save
        format.html { redirect_to @diahorario, notice: 'Diahorario was successfully created.' }
        format.json { render :show, status: :created, location: @diahorario }
      else
        format.html { render :new }
        format.json { render json: @diahorario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diahorarios/1
  # PATCH/PUT /diahorarios/1.json
  def update
    respond_to do |format|
      if @diahorario.update(diahorario_params)
        format.html { redirect_to @diahorario, notice: 'Diahorario was successfully updated.' }
        format.json { render :show, status: :ok, location: @diahorario }
      else
        format.html { render :edit }
        format.json { render json: @diahorario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diahorarios/1
  # DELETE /diahorarios/1.json
  def destroy
    @diahorario.destroy
    respond_to do |format|
      format.html { redirect_to diahorarios_url, notice: 'Diahorario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diahorario
      @diahorario = Diahorario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diahorario_params
      params.require(:diahorario).permit(:horario_semana_id, :dia_horario_semana_id, :dia)
    end
end
