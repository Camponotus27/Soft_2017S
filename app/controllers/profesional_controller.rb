class ProfesionalController < ApplicationController

  def index
    @Profesional = User.where( :permiso => "profesional").where.not( :email => current_user.email)
  end

  def show
     @Profesional  = User.find(params[:id])
   end

  # GET /busy_times/new
  def new
    @Profesional = User.new
  end

  # GET /busy_times/1/edit
  def edit
    @Profesional  = User.find(params[:id])
  end


  # POST /busy_times
  # POST /busy_times.json
  def create
  end

  # PATCH/PUT /busy_times/1
  # PATCH/PUT /busy_times/1.json
  def update
    @Profesional  = User.find(params[:id])

    respond_to do |format|
      if @Profesional.update(administrador_params)
        format.html { redirect_to administrador_index_path, notice: 'Se actualizo correctamente el nivel de permiso' }

      else
        format.html { render :edit  , notice: 'No se actualizo'}

      end
    end

  end

  # DELETE /busy_times/1
  # DELETE /busy_times/1.json
  def destroy
    @Profesional  = User.find(params[:id])
    @Profesional.destroy

    redirect_to :action => :index
  end

  private
    def user_params
      params.require(:user).permit(:nombre, :apellido_paterno, :apellido_materno, :rut, :numero_contacto, :email)
    end
    # callback
    def set_busy_time
     # @administrador = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrador_params
      params.require(:Profesional).permit(:permiso)
    end
end
