class PodersController < ApplicationController
  before_action :set_poder, only: [:show, :edit, :update, :destroy]

  # GET /poders
  # GET /poders.json
  def index
    @poders = Poder.all
    @model_name = controller_name.classify
  end

  # GET /poders/1
  # GET /poders/1.json
  def show
  end

  # GET /poders/new
  def new
    @poder = Poder.new
  end

  # GET /poders/1/edit
  def edit
  end

  # POST /poders
  # POST /poders.json
  def create
    @poder = Poder.new(poder_params)

    respond_to do |format|
      if @poder.save
        format.html { redirect_to @poder, notice: 'Poder was successfully created.' }
        format.json { render :show, status: :created, location: @poder }
      else
        format.html { render :new }
        format.json { render json: @poder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poders/1
  # PATCH/PUT /poders/1.json
  def update
    respond_to do |format|
      if @poder.update(poder_params)
        format.html { redirect_to @poder, notice: 'Poder was successfully updated.' }
        format.json { render :show, status: :ok, location: @poder }
      else
        format.html { render :edit }
        format.json { render json: @poder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poders/1
  # DELETE /poders/1.json
  def destroy
    @poder.destroy
    respond_to do |format|
      format.html { redirect_to poders_url, notice: 'Poder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poder
      @poder = Poder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poder_params
      params.require(:poder).permit(:name)
    end
end
