class AgotadosController < ApplicationController

  def index
    @libros=Libro.agotados.paginate(:page => params[:page],:per_page => 4)
  end
end
