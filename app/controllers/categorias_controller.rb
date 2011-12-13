class CategoriasController < ApplicationController
  def index
    @categorias=Categoria.includes(:libros).order(:categoria_nombre).where("categoria_nombre like ?", "%#{params[:term]}%")
    if request.xhr?
      render json: @categorias.map(&:categoria_nombre)
    end
  end

  def show
    @categoria = Categoria.find(params[:id])
  end

end
