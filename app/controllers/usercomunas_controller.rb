class UsercomunasController < ApplicationController
  before_action :set_usercomuna, only: [:show, :edit, :update, :destroy]

  # GET /usercomunas
  # GET /usercomunas.json
  def index
    @usercomunas = Usercomuna.all
  end

  # GET /usercomunas/1
  # GET /usercomunas/1.json
  def show
  end

  # GET /usercomunas/new
  def new
    @usercomuna = Usercomuna.new
  end

  # GET /usercomunas/1/edit
  def edit
  end

  # POST /usercomunas
  # POST /usercomunas.json
  def create
    @usercomuna = Usercomuna.new(usercomuna_params)

 #  @usercomuna = params[:profesions]

    respond_to do |format|
      if @usercomuna.save
        format.html { redirect_to @usercomuna, notice: 'Usercomuna was successfully created.' }
        format.json { render :show, status: :created, location: @usercomuna }
      else
        format.html { render :new }
        format.json { render json: @usercomuna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usercomunas/1
  # PATCH/PUT /usercomunas/1.json
  def update
  #  @usercomuna = params[:comunas]

    respond_to do |format|
      if @usercomuna.update(usercomuna_params)
        format.html { redirect_to @usercomuna, notice: 'Usercomuna was successfully updated.' }
        format.json { render :show, status: :ok, location: @usercomuna }
      else
        format.html { render :edit }
        format.json { render json: @usercomuna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usercomunas/1
  # DELETE /usercomunas/1.json
  def destroy
    @usercomuna.destroy
    respond_to do |format|
      format.html { redirect_to usercomunas_url, notice: 'Usercomuna was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usercomuna
      @usercomuna = Usercomuna.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usercomuna_params
      params.require(:usercomuna).permit(:comuna_id, :user_id )
    end
end
