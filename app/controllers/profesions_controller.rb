class ProfesionsController < ApplicationController
  before_action :set_profesion, only: [:show, :edit, :update, :destroy]

  def index
    @profesions = Profesion.all
  end

  def show

  end

  def new
     @servicios = Servicio.all
     @profesion = Profesion.new
  end

  def edit
  end

  def create
    @profesion = Profesion.new(profesion_params)
    @profesion.servicios = params[:servicios]

    respond_to do |format|
      if @profesion.save
        format.html { redirect_to @profesion, notice: 'La profesion de creo correctamente.' }
        format.json { render :show, status: :created, location: @profesion }
      else
        format.html { render :new }
        format.json { render json: @profesion.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

    @profesion.servicios = params[:servicios]
    
    respond_to do |format|
      if @profesion.update(profesion_params)
        format.html { redirect_to @profesion, notice: 'La profesion de cactualzo correctamente.' }
        format.json { render :show, status: :ok, location: @profesion }
      else
        format.html { render :edit }
        format.json { render json: @profesion.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @profesion.destroy
    respond_to do |format|
      format.html { redirect_to profesions_url, notice: 'Profesion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesion
      @profesion = Profesion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesion_params
      params.require(:profesion).permit(:nombre, :descripcion, :servicios)
    end
end
