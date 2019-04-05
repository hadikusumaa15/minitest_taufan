class WakandasController < ApplicationController
  before_action :set_wakanda, only: [:show, :edit, :update, :destroy]

  # GET /wakandas
  # GET /wakandas.json
  def index
    @wakandas = Wakanda.all
  end

  # GET /wakandas/1
  # GET /wakandas/1.json
  def show
  end

  # GET /wakandas/new
  def new
    @wakanda = Wakanda.new
  end

  # GET /wakandas/1/edit
  def edit
  end

  # POST /wakandas
  # POST /wakandas.json
  def create
    @wakanda = Wakanda.new(wakanda_params)

    respond_to do |format|
      if @wakanda.save
        format.html { redirect_to @wakanda, notice: 'Wakanda was successfully created.' }
        format.json { render :show, status: :created, location: @wakanda }
      else
        format.html { render :new }
        format.json { render json: @wakanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wakandas/1
  # PATCH/PUT /wakandas/1.json
  def update
    respond_to do |format|
      if @wakanda.update(wakanda_params)
        format.html { redirect_to @wakanda, notice: 'Wakanda was successfully updated.' }
        format.json { render :show, status: :ok, location: @wakanda }
      else
        format.html { render :edit }
        format.json { render json: @wakanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wakandas/1
  # DELETE /wakandas/1.json
  def destroy
    @wakanda.destroy
    respond_to do |format|
      format.html { redirect_to wakandas_url, notice: 'Wakanda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wakanda
      @wakanda = Wakanda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wakanda_params
      params.require(:wakanda).permit(:name, :price, :released_on)
    end
end
