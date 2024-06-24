class JuegosController < ApplicationController
  before_action :set_juego, only: %i[ show edit update destroy upload_image ]

  # GET /juegos or /juegos.json
  def index
    @juegos = Juego.all
  end

  # GET /juegos/1 or /juegos/1.json
  def show
    @juego = Juego.find(params[:id])
  end

  # POST /juegos/1/upload_image
  def upload_image
    if @juego.update(juego_params)
      redirect_to @juego, notice: 'Imagen subida correctamente.'
    else
      redirect_to @juego, alert: 'Hubo un error al subir la imagen.'
    end
  end

  # Other actions...

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juego
      @juego = Juego.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def juego_params
      params.require(:juego).permit(:nombre, :descripcion, :image)
    end
end
