class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :startdate, :enddate, :checkbox))
    if @schedule.save
      flash[:notice] = "スケジュールが登録されました"
      redirect_to :schedules
    else
      render :new
    end
  end

  def show
    @schedule = Schedules.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
