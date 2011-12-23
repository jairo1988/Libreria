class AgotadosController < ApplicationController

  def index
    @agotados = Libro.agotados.paginate(:page => params[:page], :per_page => 4)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @libros }
    end
  end

  def show
    @agotados = Libro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agotados }
    end
  end
end
