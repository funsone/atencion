class OficiosController < ApplicationController
  before_action :set_oficio, only: [:show, :edit, :update, :destroy]
before_filter :authenticate_user!
  # GET /oficios
  # GET /oficios.json
  def index
    @oficios = Oficio.all.paginate(:page => params[:page]).order('created_at DESC')
  end

  # GET /oficios/1
  # GET /oficios/1.json
  def show
  end

  # GET /oficios/new
  def new
    @oficio = Oficio.new
  end

  # GET /oficios/1/edit
  def edit
  end

  # POST /oficios
  # POST /oficios.json
  def create
    @oficio = Oficio.new(oficio_params)

    respond_to do |format|
      if @oficio.save
        format.html { redirect_to oficios_url, notice: 'Oficio agregado exitosamente.' }
        format.json { render :show, status: :created, location: oficios_url }
      else
        format.html { render :new }
        format.json { render json: @oficio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oficios/1
  # PATCH/PUT /oficios/1.json
  def update
    respond_to do |format|
      if @oficio.update(oficio_params)
        format.html { redirect_to oficios_url, notice: 'Oficio actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: oficios_url }
      else
        format.html { render :edit }
        format.json { render json: @oficio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oficios/1
  # DELETE /oficios/1.json
  def destroy
    @oficio.destroy
    respond_to do |format|
      format.html { redirect_to oficios_url, notice: 'Oficio eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oficio
      @oficio = Oficio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oficio_params
      params.require(:oficio).permit(:institucion, :fecha_de_emision, :descripcion)
    end
end
