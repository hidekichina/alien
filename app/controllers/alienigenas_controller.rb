class AlienigenasController < ApplicationController
  before_action :set_alienigena, only: [:show, :edit, :update, :destroy]

  # GET /alienigenas
  # GET /alienigenas.json
  def index
    @alienigenas = Alienigena.all
  end

  # GET /alienigenas/1
  # GET /alienigenas/1.json
  def show
  end

  # GET /alienigenas/new
  def new
    @alienigena = Alienigena.new
  end

  # GET /alienigenas/1/edit
  def edit
  end

  # POST /alienigenas
  # POST /alienigenas.json
  def create
    @alienigena = Alienigena.new(alienigena_params)

    respond_to do |format|
      if @alienigena.save
        format.html { redirect_to @alienigena, notice: 'Alienigena was successfully created.' }
        format.json { render :show, status: :created, location: @alienigena }
      else
        format.html { render :new }
        format.json { render json: @alienigena.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alienigenas/1
  # PATCH/PUT /alienigenas/1.json
  def update
    respond_to do |format|
      if @alienigena.update(alienigena_params)
        format.html { redirect_to @alienigena, notice: 'Alienigena was successfully updated.' }
        format.json { render :show, status: :ok, location: @alienigena }
      else
        format.html { render :edit }
        format.json { render json: @alienigena.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alienigenas/1
  # DELETE /alienigenas/1.json
  def destroy
    @alienigena.destroy
    respond_to do |format|
      format.html { redirect_to alienigenas_url, notice: 'Alienigena was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alienigena
      @alienigena = Alienigena.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alienigena_params
      params.require(:alienigena).permit(:name, :age)
    end
end
