class ClienteController < ApplicationController
  
  def index
     @clientes = User.where( :permiso => "cliente")
  end

  def show
     @cliente  = User.find(params[:id])
   end

  # GET /busy_times/new
  def new
    @cliente = User.new
  end

  # GET /busy_times/1/edit
  def edit
    @cliente  = User.find(params[:id])
  end

  # POST /busy_times
  # POST /busy_times.json
  def create
  end

  # PATCH/PUT /busy_times/1
  # PATCH/PUT /busy_times/1.json
  def update
    @cliente  = User.find(params[:id])

    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to cliente_index_path, notice: 'Se actualizo correctamente el nivel de permiso' }

      else
        format.html { render :edit  , notice: 'No se actualizo'}
  
      end
    end

  end


  def destroy
    @cliente  = User.find(params[:id])
    @cliente.destroy

    redirect_to :action => :index
  end

  private
  

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:permiso)
    end
end
