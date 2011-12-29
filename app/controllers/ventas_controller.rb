class VentasController < ApplicationController

def index
  @ventas=Compra.all
  respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ventas }
    end
  end


end
