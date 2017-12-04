class ProfesionsController < ApplicationController
  before_action :set_profesion, only: [:show, :edit, :update, :destroy]

  def index
      @profesions = Profesion.all
  end

  def show
      @assignments = Assignment.where( :profesion_id => @profesion.id )
  end 

  def new
     @servicios = Servicio.all
     @profesion = Profesion.new
  end

  def edit
    @servicios = Servicio.all
    @assignments = Assignment.where( :profesion_id => @profesion.id )
  end

  def create
    @profesion = Profesion.new(profesion_params)
    @profesion.servicios = params[:servicios]

    respond_to do |format|
      if @profesion.save
        format.html { redirect_to @profesion, notice: 'La profesion de creo correctamente.' }
      else
        format.html { render :new }
      end
    end
  end

  def update

    @profesion.servicios = params[:servicios]
    
    respond_to do |format|
      if @profesion.update(profesion_params)
        format.html { redirect_to @profesion, notice: 'La profesion de actualizo correctamente.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @profesion.destroy
    respond_to do |format|
      format.html { redirect_to profesions_url, notice: 'Se la eliminado la profesion.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesion
      @profesion = Profesion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesion_params
      params.require(:profesion).permit(:nombre, :descripcion)
    end
end
