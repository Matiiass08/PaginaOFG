class AplausosController < ApplicationController
  before_action :set_aplauso, only: %i[ show edit update destroy ]

  # GET /aplausos or /aplausos.json
  def index
    @aplausos = Aplauso.all
  end

  # GET /aplausos/1 or /aplausos/1.json
  def show
    @aplauso = Aplauso.find(params[:id])
  end

  # GET /aplausos/new
  def new
    @aplauso = Aplauso.new
  end

  # GET /aplausos/1/edit
  def edit
  end

  # POST /aplausos or /aplausos.json
  def create
    @aplauso = Aplauso.new(aplauso_params)

    respond_to do |format|
      if @aplauso.save
        format.html { redirect_to aplauso_url(@aplauso), notice: "Aplauso was successfully created." }
        format.json { render :show, status: :created, location: @aplauso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aplauso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aplausos/1 or /aplausos/1.json
  def update
    respond_to do |format|
      if @aplauso.update(aplauso_params)
        format.html { redirect_to aplauso_url(@aplauso), notice: "Aplauso was successfully updated." }
        format.json { render :show, status: :ok, location: @aplauso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aplauso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aplausos/1 or /aplausos/1.json
  def destroy
    @aplauso.destroy

    respond_to do |format|
      format.html { redirect_to aplausos_url, notice: "Aplauso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aplauso
      @aplauso = Aplauso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aplauso_params
      params.require(:aplauso).permit(:nombre, :descripcion, :image)
    end
end
