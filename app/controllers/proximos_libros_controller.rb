class ProximosLibrosController < ApplicationController
  # GET /proximos_libros
  # GET /proximos_libros.json
  def index
    @proximos_libros = Libro.proximos

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proximos_libros }
    end
  end
  def show
    @proximo_libros = Libro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proximo_libros }
    end
  end

end
