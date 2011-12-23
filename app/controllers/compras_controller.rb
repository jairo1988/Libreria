class ComprasController < ApplicationController

  #def finalizar_compra
    #@cuenta.compras.each do |c|
      #if c.pendiente_comprar = "true"

  #end
  def comprar

    @compra = Compra.find(params[:id])
    @compra.update_attribute(:comprado, true)

    render :nothing => true
  end

  def index
    @compras = Compra.comprado
    @cuenta = Cuenta.find(params[:cuenta_id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @compras }
    end
  end

  # GET /libros/1
  # GET /libros/1.json
  def show
    @compra = Compra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @compra }
    end
  end

  # GET /libros/new
  # GET /libros/new.json
  def new
    @libros = Libro.find(params[:libro_id])
    @cuenta = Cuenta.find(params[:cuenta_id])
    @compra = @cuenta.compras.new(:libro => @libros, :fecha_compra => Date.today)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @compra }
    end
  end

  def create
    @compra = Compra.new(params[:compra])
    #@compra.precio_total = @Compra.cantidad * @carrito.libro.precio
    if @compra.save
      redirect_to cuenta_compras_path(current_cuenta), notice: 'Libro anyadido a Compra sin problemas'
    else
      render action: "new"
    end
  end

  def edit
    @compra = Compra.find(params[:id])
  end

  def update
    @compra=Compra.find(params[:id])
      if @compra.update_attributes(params[:Compra])
        redirect_to edit_cuenta_path(current_cuenta)
      else
        render action: "edit"
      end
  end
  # DELETE /libros/1
  # DELETE /libros/1.json
  def destroy
    @compra = Compra.find(params[:id])
    cuenta = @compra.cuenta
    @compra.destroy

    respond_to do |format|
      format.html { redirect_to cuenta_compras_path(current_cuenta) }
      format.json { head :ok }
    end
  end
end

