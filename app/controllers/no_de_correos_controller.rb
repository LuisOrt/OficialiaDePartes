class NoDeCorreosController < ApplicationController
  before_action :set_no_de_correo, only: [:show, :edit, :update, :destroy]

  # GET /no_de_correos
  # GET /no_de_correos.json
  def index
    @no_de_correos = NoDeCorreo.all
  end

  # GET /no_de_correos/1
  # GET /no_de_correos/1.json
  def show
  end

  # GET /no_de_correos/new
  def new
    @no_de_correo = NoDeCorreo.new
  end

  # GET /no_de_correos/1/edit
  def edit
  end

  # POST /no_de_correos
  # POST /no_de_correos.json
  def create
    @no_de_correo = NoDeCorreo.new(no_de_correo_params)
    @no_de_correo.No_de_Correo=(NoDeCorreo.last.eql?(nil)) ? 1 : (NoDeCorreo.last.No_de_Correo)+1 
    respond_to do |format|
      if @no_de_correo.save
        format.html { redirect_to @no_de_correo, notice: 'No de correo was successfully created.' }
        format.json { render :show, status: :created, location: @no_de_correo }
      else
        format.html { render :new }
        format.json { render json: @no_de_correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /no_de_correos/1
  # PATCH/PUT /no_de_correos/1.json
  def update
    respond_to do |format|
      if @no_de_correo.update(no_de_correo_params)
        format.html { redirect_to @no_de_correo, notice: 'No de correo was successfully updated.' }
        format.json { render :show, status: :ok, location: @no_de_correo }
      else
        format.html { render :edit }
        format.json { render json: @no_de_correo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /no_de_correos/1
  # DELETE /no_de_correos/1.json
  def destroy
    @no_de_correo.destroy
    respond_to do |format|
      format.html { redirect_to no_de_correos_url, notice: 'No de correo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_no_de_correo
      @no_de_correo = NoDeCorreo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def no_de_correo_params
      params.require(:no_de_correo).permit(:No_de_Correo, :Departamento, :Proposito)
    end
end
