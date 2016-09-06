class EventLocationsController < ApplicationController
  before_action :set_event
  before_action :set_location , :only => [:show , :edit , :update ,:destroy]
  def new
    @location = @event.build_location
  end

  def create
    @location = @event.build_location(params_location)
    if @location.save
      flash[:notice] ="新增成功"
      redirect_to events_path
    else
      render :action => :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @location.update(params_location)
      flash[:notice] = "更新成功"
      redirect_to events_path
    else
      flash[:notice] = "修改失敗"
      render :action => :edit
    end
  end

  def destroy
    if @location.destroy
      flash[:notice] = "刪除成功"
    else
      flash[:notice] = "刪除失敗"
    end
    redirect_to events_path
  end

  private
  def set_location
    @location = @event.location
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def params_location
    params.require(:location).permit(:name)
  end

end
