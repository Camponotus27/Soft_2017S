class AdministradorController < ApplicationController
  


  def index
    @administrador = User.where( :permiso => "administrador").where.not( :email => current_user.email)
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
    def busy_time_params
      #params.require(:busy_time).permit(:identificador, :tiempo_ini, :tiempo_ter)
    end


end



