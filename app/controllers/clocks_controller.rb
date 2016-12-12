class ClocksController < ApplicationController
  def index
    @clocks = Clock.all
    @clock = Clock.new
  end

  def create
    @clock = Clock.create(clock_params)
    @clock.time = @clock.time + "#{@clock.timezone}00000".to_i
    @clock.save!
  end

  def show
    @clock = Clock.find(params[:id])
  end

  private

  def clock_params
    params.fetch(:clock).permit(:time, :timezone)
  end
end
