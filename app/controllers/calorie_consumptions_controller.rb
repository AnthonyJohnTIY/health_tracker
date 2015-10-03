class CalorieConsumptionsController < ApplicationController
  before_action :set_calorie_consumption, only: [:show, :edit, :update, :destroy]

  # GET /calorie_consumptions
  def index
    @calorie_consumptions = CalorieConsumption.all
  end

  # GET /calorie_consumptions/1
  def show
  end

  # GET /calorie_consumptions/new
  def new
    @calorie_consumption = CalorieConsumption.new
  end

  # GET /calorie_consumptions/1/edit
  def edit
  end

  # POST /calorie_consumptions
  def create
    @calorie_consumption = CalorieConsumption.new(calorie_consumption_params)

    if @calorie_consumption.save
      redirect_to @calorie_consumption, notice: 'Calorie Consumption was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /calorie_consumptions/1
  def update
    if @calorie_consumption.update(calorie_consumption_params)
      redirect_to @calorie_consumption, notice: 'Calorie Consumption was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /calorie_consumptions/1
  def destroy
    @calorie_consumption.destroy
    redirect_to calorie_consumptions_url, notice: 'Calorie Consumption was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calorie_consumption
      @calorie_consumption = CalorieConsumption.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def calorie_consumption_params
      params.require(:calorie_consumption).permit(:name, :amount, :date)
    end
end
