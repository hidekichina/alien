class PlanetaController < ApplicationController
  before_action :set_planetum, only: [:show, :edit, :update, :destroy]

  # GET /planeta
  # GET /planeta.json
  def index
    @planeta = Planetum.all
  end

  # GET /planeta/1
  # GET /planeta/1.json
  def show
  end

  # GET /planeta/new
  def new
    @planetum = Planetum.new
  end

  # GET /planeta/1/edit
  def edit
  end

  # POST /planeta
  # POST /planeta.json
  def create
    @planetum = Planetum.new(planetum_params)

    respond_to do |format|
      if @planetum.save
        format.html { redirect_to @planetum, notice: 'Planetum was successfully created.' }
        format.json { render :show, status: :created, location: @planetum }
      else
        format.html { render :new }
        format.json { render json: @planetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planeta/1
  # PATCH/PUT /planeta/1.json
  def update
    respond_to do |format|
      if @planetum.update(planetum_params)
        format.html { redirect_to @planetum, notice: 'Planetum was successfully updated.' }
        format.json { render :show, status: :ok, location: @planetum }
      else
        format.html { render :edit }
        format.json { render json: @planetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planeta/1
  # DELETE /planeta/1.json
  def destroy
    @planetum.destroy
    respond_to do |format|
      format.html { redirect_to planeta_url, notice: 'Planetum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planetum
      @planetum = Planetum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planetum_params
      params.require(:planetum).permit(:name)
    end
end
