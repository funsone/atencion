class AyudasController < ApplicationController
  before_action :set_ayuda, only: [:show, :edit, :update, :destroy]
before_filter :authenticate_user!
  # GET /ayudas
  # GET /ayudas.json
  def index
    @ayudas = Ayuda.paginate(:page => params[:page]).order('created_at DESC')
  end

  # GET /ayudas/1
  # GET /ayudas/1.json
  def show
  end

  # GET /ayudas/new
  def new
    @ayuda = Ayuda.new
  end

  # GET /ayudas/1/edit
  def edit
  end

  # POST /ayudas
  # POST /ayudas.json
  def create
    @ayuda = Ayuda.new(ayuda_params)

    respond_to do |format|
      if @ayuda.save
        format.html { redirect_to ayudas_path, notice: 'Ayuda agregado exitosamente.' }
        format.json { render :show, status: :created, location: ayudas_path }
      else
        format.html { render :new }
        format.json { render json: @ayuda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ayudas/1
  # PATCH/PUT /ayudas/1.json
  def update
    respond_to do |format|
      if @ayuda.update(ayuda_params)
        format.html { redirect_to ayudas_path, notice: 'Ayuda actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: ayudas_path }
      else
        format.html { render :edit }
        format.json { render json: @ayuda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ayudas/1
  # DELETE /ayudas/1.json
  def destroy
    @ayuda.destroy
    respond_to do |format|
      format.html { redirect_to ayudas_url, notice: 'Ayuda eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ayuda
      @ayuda = Ayuda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ayuda_params
      params.require(:ayuda).permit(:nombre, :departamento_id)
    end
end
