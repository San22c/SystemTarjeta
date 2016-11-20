class TarjetaController < ApplicationController
  before_action :set_tarjetum, only: [:show, :edit, :update, :destroy]


  def bajanormal
      @tarjeta = Tarjeta.find(params[:tarjeta_id])
      @tarjeta.fecha_baja = Time.zone.today
      @tarjeta.save
      respond_to do |format|
        format.html { redirect_to :back}
        format.json { head :no_content }
      end
    end
    def activar
        @tarjeta = Tarjetum.find(params[:tarjetum_id])
        @tarjeta.fecha_baja = nil
          @tarjeta.save
          respond_to do |format|
            format.html { redirect_to :back, notice: "La tarjeta fue activada correctamente" }
            format.json { head :no_content }
          end
      end

      def activar_user
          @usuario = User.find_by(id: current_user.id)
          @usuario.fecha_baja = nil
            @usuario.save
            respond_to do |format|
              format.html { redirect_to :back, notice: "El usuario fue activado correctamente" }
              format.json { head :no_content }
            end
        end

        def des_user
            @usuario = User.find_by(id: current_user.id)
            @usuario.fecha_baja =  Time.zone.today
              @usuario.save
              respond_to do |format|
                format.html { redirect_to :back, notice: "El usuario fue dado de baja correctamente" }
                format.json { head :no_content }
              end
          end

  # GET /tarjeta
  # GET /tarjeta.json
  def index
    @tarjeta = Tarjetum.all
  end
  def nueva_tarjeta
    @tarjetum = Tarjetum.new
    @tarjetum.user_id = current_user.id
    @tarjetum.puntos = 0

    email_user = current_user.email
    telefono_user = current_user.telefono
    emails = email_user[1,4]
    telefono = telefono_user[2,4]

    @tarjetum.numref =  emails + telefono
     respond_to do |format|
      if @tarjetum.save

        ActionCorreo.sample_email(current_user).deliver
        format.html { redirect_to root_path, notice: 'La tarjeta se activo correctamente.' }

       else
        format.html { render :new }
        format.json { render json: @tarjetum.errors, status: :unprocessable_entity }
      end
    end
  end
  # GET /tarjeta/1
  # GET /tarjeta/1.json
  def show
  end

  # GET /tarjeta/new
  def new
    @tarjetum = Tarjetum.new

  end

  # GET /tarjeta/1/edit
  def edit
  end

  # POST /tarjeta
  # POST /tarjeta.json
  def create
    @tarjetum = Tarjetum.new(tarjetum_params)

    respond_to do |format|
      if @tarjetum.save
        format.html { redirect_to @tarjetum, notice: 'Tarjetum was successfully created.' }
        format.json { render :show, status: :created, location: @tarjetum }
      else
        format.html { render :new }
        format.json { render json: @tarjetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarjeta/1
  # PATCH/PUT /tarjeta/1.json
  def update
    respond_to do |format|
      if @tarjetum.update(tarjetum_params)
        format.html { redirect_to @tarjetum, notice: 'Tarjetum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarjetum }
      else
        format.html { render :edit }
        format.json { render json: @tarjetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarjeta/1
  # DELETE /tarjeta/1.json
  def destroy
    @tarjetum.destroy
    respond_to do |format|
      format.html { redirect_to tarjeta_url, notice: 'Tarjetum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarjetum
      @tarjetum = Tarjetum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarjetum_params
      params.require(:tarjetum).permit(:numref, :puntos, :usuario_id)
    end
end
