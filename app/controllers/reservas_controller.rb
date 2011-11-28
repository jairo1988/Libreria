class ReservasController < ApplicationController

  def index
    @reservas = Reserva.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservas }
    end
  end

  # GET /libros/1
  # GET /libros/1.json
  def show
    @reserva = Reserva.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reserva }
    end
  end

  # GET /libros/new
  # GET /libros/new.json
  def new
    @proximo_libros = Libro.find(params[:libro_id])
    @cuenta = Cuenta.find(params[:cuenta_id])
    @reserva = @cuenta.reservas.new(:libro => @proximo_libros, :fecha_reserva => Date.today)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reserva }
    end
  end

  def create
    @reserva = Reserva.new(params[:reserva])

    if @reserva.save
      redirect_to @reserva.cuenta, notice: 'La reserva del libro se ha hecho satisfactoriamente'
    else
      render action: "new"
    end
  end

  def edit
    @reserva = Reserva.find(params[:id])
  end

  # DELETE /libros/1
  # DELETE /libros/1.json
  def destroy
    @reserva = Reserva.find(params[:id])
    cuenta = @reserva.cuenta
    @reserva.destroy

    respond_to do |format|
      format.html { redirect_to cuenta }
      format.json { head :ok }
    end
  end
end

