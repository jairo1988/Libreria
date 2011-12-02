class CarritosController < ApplicationController

  def finalizar_compra
    raise
  end


  def index
    @carritos = Carrito.all
    @cuenta = Cuenta.find(params[:cuenta_id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carritos }
    end
  end

  # GET /libros/1
  # GET /libros/1.json
  def show
    @carrito = Carrito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @carrito }
    end
  end

  # GET /libros/new
  # GET /libros/new.json
  def new
    @libros = Libro.find(params[:libro_id])
    @cuenta = Cuenta.find(params[:cuenta_id])
    @carrito = @cuenta.carritos.new(:libro => @libros, :fecha_compra => Date.today)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @carrito }
    end
  end

  def create
    @carrito = Carrito.new(params[:carrito])
    #@carrito.precio_total = @carrito.cantidad * @carrito.libro.precio
    if @carrito.save
      redirect_to cuenta_carritos_path(current_cuenta), notice: 'Libro anyadido a carrito sin problemas'
    else
      render action: "new"
    end
  end

  def edit
    @carrito = Carrito.find(params[:id])
  end

  def update
    @carrito=Carrito.find(params[:id])
      if @carrito.update_attributes(params[:carrito])
        redirect_to edit_cuenta_path(current_cuenta)
      else
        render action: "edit"
      end
  end
  # DELETE /libros/1
  # DELETE /libros/1.json
  def destroy
    @carrito = Carrito.find(params[:id])
    cuenta = @carrito.cuenta
    @carrito.destroy

    respond_to do |format|
      format.html { redirect_to cuenta_carritos_path(current_cuenta) }
      format.json { head :ok }
    end
  end
end

