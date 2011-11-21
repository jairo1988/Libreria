class ProximosLibrosController < ApplicationController
  # GET /proximos_libros
  # GET /proximos_libros.json
  def index
    @proximo_libros = Libro.proximos

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proximos_libros }
    end
  end

end
