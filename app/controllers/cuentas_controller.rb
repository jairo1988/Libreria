class CuentasController < ApplicationController
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

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cuenta }
    end
  end

  # GET /cuenta/1/edit
  def edit
    @cuenta = Cuenta.find(params[:id])
  end

  # POST /cuenta
  # POST /cuenta.json
  def create
    @cuenta = Cuenta.new(params[:cuenta])

    respond_to do |format|
      if @cuenta.save
        format.html { redirect_to @cuenta, notice: 'Cuenta was successfully created.' }
        format.json { render json: @cuenta, status: :created, location: @cuenta }
      else
        format.html { render action: "new" }
        format.json { render json: @cuenta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cuenta/1
  # PUT /cuenta/1.json
  def update
    @cuenta = Cuenta.find(params[:id])

    respond_to do |format|
      if @cuenta.update_attributes(params[:cuenta])
        format.html { redirect_to @cuenta, notice: 'Cuentum was successfully updated.' }
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
      format.html { redirect_to cuenta_url }
      format.json { head :ok }
    end
  end
end
