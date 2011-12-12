class CuentasController < ApplicationController
before_filter :correct_cuenta, :only => [:edit,:update]

  # GET /cuenta
  # GET /cuenta.json
  def index
    @cuentas = Cuenta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cuentas }
    end
  end

  # GET /cuenta/1
  # GET /cuenta/1.json
  def show
    @cuenta = Cuenta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cuenta }
    end
  end

  # GET /cuenta/new
  # GET /cuenta/new.json
  def new
    @cuenta = Cuenta.new
  end
  # GET /cuenta/1/edit
  def edit
    @cuenta = Cuenta.find(params[:id])
    @compras = @cuenta.compras.comprado
  end

  # POST /cuenta
  # POST /cuenta.json
  def create
    @cuenta = Cuenta.new(params[:cuenta])
    if @cuenta.save
      redirect_to log_in_url, notice: 'Signed up!'
    else
      render action: "new"
    end
  end

  # PUT /cuenta/1
  # PUT /cuenta/1.json
  def update
    @cuenta = Cuenta.find(params[:id])

    respond_to do |format|
      if @cuenta.update_attributes(params[:cuenta])
        format.html { redirect_to @cuenta, notice: 'La cuenta ha sido actualizada' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cuenta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuenta/1
  # DELETE /cuenta/1.json
  def destroy
    @cuenta = Cuenta.find(params[:id])
    @cuenta.destroy

    respond_to do |format|
      format.html { redirect_to cuentas_url }
      format.json { head :ok }
    end
  end
end

 private
  def authenticate
      deny_access unless signed_in?
    end

  def correct_cuenta
    @cuenta = Cuenta.find(params[:id])

    redirect_to(root_path, :notice => "No tienes permiso para modificar esta cuenta.") unless current_cuenta == @cuenta
  end
