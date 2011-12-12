class CategoriasController < ApplicationController
  def index

    @categorias=Categoria.order(:categoria_nombre).where("categoria_nombre like ?", "%#{params[:term]}%")
    if request.xhr?
      render json: @categorias.map(&:categoria_nombre)
    end


  end
end
