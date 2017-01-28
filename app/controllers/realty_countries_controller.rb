class RealtyCountriesController < ApplicationController
  before_action :set_realty_country, only: [:show, :edit, :update, :destroy]

  # GET /realty_countries
  # GET /realty_countries.json
  def index
    @realty_countries = RealtyCountry.all
  end

  # GET /realty_countries/1
  # GET /realty_countries/1.json
  def show
  end

  # GET /realty_countries/1/realties
  def realties
    @realty_country = RealtyCountry.find(params[:realty_country_id])
    @realties = Realty.where(realty_country_id: params[:realty_country_id]).order(created_at: :asc)
    render 'realties/index'
  end



  # GET /realty_countries/new
  def new
    @realty_country = RealtyCountry.new
  end

  # GET /realty_countries/1/edit
  def edit
  end

  # POST /realty_countries
  # POST /realty_countries.json
  def create
    @realty_country = RealtyCountry.new(realty_country_params)

    respond_to do |format|
      if @realty_country.save
        format.html { redirect_to @realty_country, notice: 'Realty country was successfully created.' }
        format.json { render :show, status: :created, location: @realty_country }
      else
        format.html { render :new }
        format.json { render json: @realty_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realty_countries/1
  # PATCH/PUT /realty_countries/1.json
  def update
    respond_to do |format|
      if @realty_country.update(realty_country_params)
        format.html { redirect_to @realty_country, notice: 'Realty country was successfully updated.' }
        format.json { render :show, status: :ok, location: @realty_country }
      else
        format.html { render :edit }
        format.json { render json: @realty_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realty_countries/1
  # DELETE /realty_countries/1.json
  def destroy
    @realty_country.destroy
    respond_to do |format|
      format.html { redirect_to realty_countries_url, notice: 'Realty country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realty_country
      @realty_country = RealtyCountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def realty_country_params
      params.require(:realty_country).permit(:country_name, :description, :preview_img)
    end
end
