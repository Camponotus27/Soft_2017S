class AdministradorController < ApplicationController
  
  
  #before_action :set_busy_time, only: [:show, :edit, :update, :destroy]


  def index
    @administrador = User.where( :permiso => "administrador")
  end

  def show
  end

  # GET /busy_times/new
  def new
    @administrador = User.new
  end

  # GET /busy_times/1/edit
  def edit
  end

  # POST /busy_times
  # POST /busy_times.json
  def create
  end

  # PATCH/PUT /busy_times/1
  # PATCH/PUT /busy_times/1.json
  def update
  end

  # DELETE /busy_times/1
  # DELETE /busy_times/1.json
  def destroy
  end

  private
    # callback
    def set_busy_time
     # @busy_time = BusyTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def busy_time_params
      #params.require(:busy_time).permit(:identificador, :tiempo_ini, :tiempo_ter)
    end



end



