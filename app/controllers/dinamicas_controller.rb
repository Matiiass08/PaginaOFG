class DinamicasController < ApplicationController
  before_action :set_dinamica, only: %i[ show upload_image ]
  # GET /dinamicas or /dinamicas.json
  def index
    @dinamicas = Dinamica.all
  end

  # GET /dinamicas/1 or /dinamicas/1.json
  def show
    @dinamica = Dinamica.find(params[:id])
  end

  # GET /dinamicas/new
  def new
    @dinamica = Dinamica.new
  end

  # GET /dinamicas/1/edit
  def edit
  end

  def upload_image
    if @dinamica.update(dinamica_params)
      redirect_to @dinamica, notice: 'Imagen subida correctamente.'
    else
      redirect_to @dinamica, alert: 'Hubo un error al subir la imagen.'
    end
  end

  # POST /dinamicas or /dinamicas.json
  def create
    @dinamica = Dinamica.new(dinamica_params)

    respond_to do |format|
      if @dinamica.save
        format.html { redirect_to dinamica_url(@dinamica), notice: "Dinamica was successfully created." }
        format.json { render :show, status: :created, location: @dinamica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dinamica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dinamicas/1 or /dinamicas/1.json
  def update
    respond_to do |format|
      if @dinamica.update(dinamica_params)
        format.html { redirect_to dinamica_url(@dinamica), notice: "Dinamica was successfully updated." }
        format.json { render :show, status: :ok, location: @dinamica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dinamica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinamicas/1 or /dinamicas/1.json
  def destroy
    @dinamica.destroy

    respond_to do |format|
      format.html { redirect_to dinamicas_url, notice: "Dinamica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dinamica
      @dinamica = Dinamica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dinamica_params
      params.require(:dinamica).permit(:nombre, :descripcion, :image)
    end
end
