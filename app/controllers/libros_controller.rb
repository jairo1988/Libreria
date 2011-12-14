class LibrosController < ApplicationController
  # GET /libros
  # GET /libros.json
  def index
    @libros = Libro.disponibles
    @libros = Libro.paginate(:page => params[:page], :per_page => 4)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @libros }
    end
  end

  # GET /libros/1
  # GET /libros/1.json
  def show
    @libro = Libro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @libro }
    end
  end

  # GET /libros/new
  # GET /libros/new.json
  def new
    @libro = Libro.new #(:anyo => 2011)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @libro }
    end
  end

  # GET /libros/1/edit
  def edit
    @libro = Libro.find(params[:id])
  end

  # POST /libros
  # POST /libros.json
  def create
    @libro = Libro.new(params[:libro])

    if @libro.save
      redirect_to @libro, notice: 'Libro was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /libros/1
  # PUT /libros/1.json
  def update
    @libro = Libro.find(params[:id])

    respond_to do |format|
      if @libro.update_attributes(params[:libro])
        format.html { redirect_to @libro, notice: 'Libro was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libros/1
  # DELETE /libros/1.json
  def destroy
    @libro = Libro.find(params[:id])
    @libro.destroy

    respond_to do |format|
      format.html { redirect_to libros_url }
      format.json { head :ok }
    end
  end
end
