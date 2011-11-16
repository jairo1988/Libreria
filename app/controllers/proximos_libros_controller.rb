class ProximosLibrosController < ApplicationController
  # GET /proximos_libros
  # GET /proximos_libros.json
  def index
    @proximos_libros = Libro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proximos_libros }
    end
  end

  # GET /proximos_libros/1
  # GET /proximos_libros/1.json
  def show
    @proximo_libros = Libro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proximo_libros }
    end
  end

  # GET /proximos_libros/new
  # GET /proximos_libros/new.json
  def new
    @proximo_libros = Libro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proximo_libros }
    end
  end

  # GET /proximos_libros/1/edit
  def edit
    @proximo_libros = Libro.find(params[:id])
  end

  # POST /proximos_libros
  # POST /proximos_libros.json
  def create
    @proximo_libros = Libro.new(params[:proximo_libros])

    respond_to do |format|
      if @proximo_libros.save
        format.html { redirect_to @proximo_libros, notice: 'Proximo libros was successfully created.' }
        format.json { render json: @proximo_libros, status: :created, location: @proximo_libros }
      else
        format.html { render action: "new" }
        format.json { render json: @proximo_libros.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proximos_libros/1
  # PUT /proximos_libros/1.json
  def update
    @proximo_libros = Libro.find(params[:id])

    respond_to do |format|
      if @proximo_libros.update_attributes(params[:proximo_libros])
        format.html { redirect_to @proximo_libros, notice: 'Proximo libros was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @proximo_libros.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proximos_libros/1
  # DELETE /proximos_libros/1.json
  def destroy
    @proximo_libros = Libro.find(params[:id])
    @proximo_libros.destroy

    respond_to do |format|
      format.html { redirect_to proximos_libros_url }
      format.json { head :ok }
    end
  end
end
