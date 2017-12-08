class ProfesionalController < ApplicationController

  

  def index
    @profesionals = User.where( :permiso => "profesional")
    @horarios = Horario.all
  end

  def show
     @profesional  = User.find(params[:id])
   end

  # GET /busy_times/new
  def new
    @profesional = User.new
  end

  # GET /busy_times/1/edit
  def edit
    @profesional  = User.find(params[:id])
  end

  # POST /busy_times
  # POST /busy_times.json
  def create
  end

  # PATCH/PUT /busy_times/1
  # PATCH/PUT /busy_times/1.json
  def update
    @profesional  = User.find(params[:id])

    respond_to do |format|
      if @profesional.update(administrador_params)
        format.html { redirect_to profesional_index_path, notice: 'Se actualizo correctamente el nivel de permiso' }

      else
        format.html { render :edit  , notice: 'No se actualizo'}

      end
    end

  end

  # DELETE /busy_times/1
  # DELETE /busy_times/1.json
  def destroy
    @profesional  = User.find(params[:id])
    @profesional.destroy

    redirect_to :action => :index
  end

  private
    # callback
    def set_busy_time
     # @administrador = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrador_params
      params.require(:profesional).permit(:permiso)
    end
end
