class PersonasController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_persona, only: [:show, :edit, :update, :destroy]

  # GET /personas
  # GET /personas.json
  def index
    @personas = Persona.all.paginate(:page => params[:page]).order('created_at DESC')
  end

  # GET /personas/1
  # GET /personas/1.json
  def show
  end

  # GET /personas/new
  def new

    @persona = Persona.new
    @persona.cedula=params[:cedula] if !params[:cedula].nil?
  end

  # GET /personas/1/edit
  def edit
  end

  # POST /personas
  # POST /personas.json
  def create
    @persona = Persona.new(persona_params)

    respond_to do |format|
      if @persona.save
        format.html { redirect_to new_persona_solicitud_path(@persona), notice: 'Persona agregado exitosamente.' }
        format.json { render :show, status: :created, location: new_persona_solicitud_path(@persona) }
      else
        format.html { render :new }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personas/1
  # PATCH/PUT /personas/1.json
  def update
    respond_to do |format|
      if @persona.update(persona_params)
        format.html {redirect_to personas_url, notice: 'Persona actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: personas_url }
      else
        format.html { render :edit }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personas/1
  # DELETE /personas/1.json
  def destroy
    @persona.destroy
    respond_to do |format|
      format.html { redirect_to personas_url, notice: 'Persona eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end


  #solixud add
  # persona/X/agregar


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persona
      @persona = Persona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    def persona_params
      params.require(:persona).permit(:nombres, :apellidos, :cedula, :tipo_de_cedula, :fecha_de_nacimiento, :municipios, :direccion, :telefono,:sexo)
    end
end
