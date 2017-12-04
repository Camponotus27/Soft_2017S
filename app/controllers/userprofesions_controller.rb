class UserprofesionsController < ApplicationController
  before_action :set_userprofesion, only: [:show, :edit, :update, :destroy]

  # GET /userprofesions
  # GET /userprofesions.json
  def index
    @userprofesions = Userprofesion.all
  end

  # GET /userprofesions/1
  # GET /userprofesions/1.json
  def show
  end

  # GET /userprofesions/new
  def new
    @userprofesion = Userprofesion.new
  end

  # GET /userprofesions/1/edit
  def edit
  end

  # POST /userprofesions
  # POST /userprofesions.json
  def create
    @userprofesion = Userprofesion.new(userprofesion_params)

    respond_to do |format|
      if @userprofesion.save
        format.html { redirect_to @userprofesion, notice: 'Userprofesion was successfully created.' }
        format.json { render :show, status: :created, location: @userprofesion }
      else
        format.html { render :new }
        format.json { render json: @userprofesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userprofesions/1
  # PATCH/PUT /userprofesions/1.json
  def update
    respond_to do |format|
      if @userprofesion.update(userprofesion_params)
        format.html { redirect_to @userprofesion, notice: 'Userprofesion was successfully updated.' }
        format.json { render :show, status: :ok, location: @userprofesion }
      else
        format.html { render :edit }
        format.json { render json: @userprofesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userprofesions/1
  # DELETE /userprofesions/1.json
  def destroy
    @userprofesion.destroy
    respond_to do |format|
      format.html { redirect_to userprofesions_url, notice: 'Userprofesion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userprofesion
      @userprofesion = Userprofesion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userprofesion_params
      params.require(:userprofesion).permit(:profesion_id, :user_id)
    end
end
