class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  def index
    @steps = Step.all
  end

  def new
    @step = Step.new
  end

  def edit
  end

  def create
    @step = Step.new(step_params)

    if @step.save
      redirect_to steps_path, notice: 'Step was successfully created.'
    else
      render :new
    end
  end

  def update
    if @step.update(step_params)
      redirect_to steps_path, notice: 'Step was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @step.destroy
    redirect_to steps_url, notice: 'Step was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = Step.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def step_params
      params.require(:step).permit(:number_of_steps, :date)
    end
end
