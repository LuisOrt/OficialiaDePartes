class NoDeOficiosController < ApplicationController
  before_action :set_no_de_oficio, only: [:show, :edit, :update, :destroy]

  # GET /no_de_oficios
  # GET /no_de_oficios.json
  def index
    @no_de_oficios = NoDeOficio.all
    respond_to do |format|
      format.html
      format.csv { send_data @no_de_oficios.to_csv }
    end
  end

  # GET /no_de_oficios/1
  # GET /no_de_oficios/1.json
  def show
  end

  # GET /no_de_oficios/new
  def new
    @no_de_oficio = NoDeOficio.new
  end

  # GET /no_de_oficios/1/edit
  def edit
  end

  # POST /no_de_oficios
  # POST /no_de_oficios.json
  def create
    @no_de_oficio = NoDeOficio.new(no_de_oficio_params)
    @no_de_oficio.Folio =(NoDeOficio.last.eql?(nil)) ? 1 : (NoDeOficio.last.Folio)+1
    respond_to do |format|
      if @no_de_oficio.save
        format.html { redirect_to @no_de_oficio, notice: 'No de oficio was successfully created.' }
        format.json { render :show, status: :created, location: @no_de_oficio }
      else
        format.html { render :new }
        format.json { render json: @no_de_oficio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /no_de_oficios/1
  # PATCH/PUT /no_de_oficios/1.json
  def update
    respond_to do |format|
      if @no_de_oficio.update(no_de_oficio_params)
        format.html { redirect_to @no_de_oficio, notice: 'No de oficio was successfully updated.' }
        format.json { render :show, status: :ok, location: @no_de_oficio }
      else
        format.html { render :edit }
        format.json { render json: @no_de_oficio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /no_de_oficios/1
  # DELETE /no_de_oficios/1.json
  def destroy
    @no_de_oficio.destroy
    respond_to do |format|
      format.html { redirect_to no_de_oficios_url, notice: 'No de oficio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_no_de_oficio
      @no_de_oficio = NoDeOficio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def no_de_oficio_params
      params.require(:no_de_oficio).permit(:Departamento, :Proposito, :Folio)
    end
end
