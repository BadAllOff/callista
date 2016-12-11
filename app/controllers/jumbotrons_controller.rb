class JumbotronsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_jumbotron, only: [:show, :edit, :update, :destroy]

  # GET /jumbotrons
  # GET /jumbotrons.json
  def index
    @jumbotrons = Jumbotron.all
  end

  # GET /jumbotrons/1
  # GET /jumbotrons/1.json
  def show
  end

  # GET /jumbotrons/new
  def new
    @jumbotron = Jumbotron.new
  end

  # GET /jumbotrons/1/edit
  def edit
  end

  # POST /jumbotrons
  # POST /jumbotrons.json
  def create
    @jumbotron = Jumbotron.new(jumbotron_params)

    respond_to do |format|
      if @jumbotron.save
        format.html { redirect_to @jumbotron, notice: 'Jumbotron was successfully created.' }
        format.json { render :show, status: :created, location: @jumbotron }
      else
        format.html { render :new }
        format.json { render json: @jumbotron.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jumbotrons/1
  # PATCH/PUT /jumbotrons/1.json
  def update
    respond_to do |format|
      if @jumbotron.update(jumbotron_params)
        format.html { redirect_to @jumbotron, notice: 'Jumbotron was successfully updated.' }
        format.json { render :show, status: :ok, location: @jumbotron }
      else
        format.html { render :edit }
        format.json { render json: @jumbotron.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jumbotrons/1
  # DELETE /jumbotrons/1.json
  def destroy
    @jumbotron.destroy
    respond_to do |format|
      format.html { redirect_to jumbotrons_url, notice: 'Jumbotron was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jumbotron
      @jumbotron = Jumbotron.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jumbotron_params
      params.require(:jumbotron).permit(:head_text, :lead_text, :button_text, :btn_color)
    end
end
