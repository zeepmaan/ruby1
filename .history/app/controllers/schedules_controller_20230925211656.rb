class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :startdate, :enddate, :checkbox ,:memo))
    if @schedule.save
      flash[:notice] = "スケジュールが登録されました"
      redirect_to :schedules
    else
      render :new
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :startdate, :enddate, :checkbox ,:memo))
      flash[:notice] = "スケジュールが更新されました"
      redirect_to :schedules
    else
      render :edit
    end
  end

  def destroy
    @user = Schedule.find(params[:id])
    @user.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :schedules, status: :see_other
  end
end
