class AlmacenbajasController < ApplicationController
  before_action :set_almacenbaja, only: [:show, :edit, :update, :destroy]

  # GET /almacenbajas
  # GET /almacenbajas.json
  def index
    @almacenbajas = Almacenbaja.all
  end

  # GET /almacenbajas/1
  # GET /almacenbajas/1.json
  def show
  end

  # GET /almacenbajas/new
  def new
    @almacenbaja = Almacenbaja.new
  end

  # GET /almacenbajas/1/edit
  def edit
  end

  # POST /almacenbajas
  # POST /almacenbajas.json
  def create
    @almacenbaja = Almacenbaja.new(almacenbaja_params)

    respond_to do |format|
      if @almacenbaja.save
        format.html { redirect_to root_path, notice: 'La tarjeta se dio de baja correctamente.' }
        format.json { render :show, status: :created, location: @almacenbaja }
      else
        format.html { render :new }
        format.json { render json: @almacenbaja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /almacenbajas/1
  # PATCH/PUT /almacenbajas/1.json
  def update
    respond_to do |format|
      if @almacenbaja.update(almacenbaja_params)
        format.html { redirect_to @almacenbaja, notice: 'Almacenbaja was successfully updated.' }
        format.json { render :show, status: :ok, location: @almacenbaja }
      else
        format.html { render :edit }
        format.json { render json: @almacenbaja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /almacenbajas/1
  # DELETE /almacenbajas/1.json
  def destroy
    @almacenbaja.destroy
    respond_to do |format|
      format.html { redirect_to almacenbajas_url, notice: 'Almacenbaja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_almacenbaja
      @almacenbaja = Almacenbaja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def almacenbaja_params
      params.require(:almacenbaja).permit(:motivo_id, :user_id, :tarjetum_id)
    end
end
