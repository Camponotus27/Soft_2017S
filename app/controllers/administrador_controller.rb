class AdministradorController < ApplicationController
  


  def index
    @administradors = User.where( :permiso => "administrador").where.not( :email => current_user.email)
  end

  def show
     @administrador  = User.find(params[:id])
   end

  # GET /busy_times/new
  def new
    @administrador = User.new
  end

  # GET /busy_times/1/edit
  def edit
    @administrador  = User.find(params[:id])
  end

  # POST /busy_times
  # POST /busy_times.json
  def create
  end

  # PATCH/PUT /busy_times/1
  # PATCH/PUT /busy_times/1.json
  def update
    @administrador  = User.find(params[:id])

    respond_to do |format|
      if @administrador.update(administrador_params)
        format.html { redirect_to administrador_index_path, notice: 'Se actualizo correctamente el nivel de permiso' }

      else
        format.html { render :edit  , notice: 'No se actualizo'}
  
      end
    end

  end

  # DELETE /busy_times/1
  # DELETE /busy_times/1.json
  def destroy
    @administrador  = User.find(params[:id])
    @administrador.destroy

    redirect_to :action => :index
  end

  private
    # callback
    def set_busy_time
     # @administrador = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrador_params
      params.require(:administrador).permit(:permiso)
    end


end



