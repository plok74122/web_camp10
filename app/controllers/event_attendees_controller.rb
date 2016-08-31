class EventAttendeesController < ApplicationController
  before_action :set_event

  def index
    @attendees = @event.attendees
  end

  def new
    @attendee = Attendee.new
  end

  def create
    @attendee = @event.attendees.build(params_attendee)
    if @attendee.save
      flash[:notice] = "新增成功"
      redirect_to event_attendee_path(@event, @attendee)
    else
      render :action => :new
    end
  end

  def show
    @attendee = Attendee.find(params[:id])
  end

  def edit
    @attendee = Attendee.find(params[:id])
  end

  def update
    @attendee = Attendee.find(params[:id])
    if @attendee.update(params_attendee)
      flash[:notice] = "更新成功"
      redirect_to event_attendees_path(@event)
    else
      render :action => :edit
    end
  end

  def destroy
    @attendee = Attendee.find(params[:id])
    if @attendee.delete
      flash[:notice] = "刪除成功"
    else
      flash[:notice] = "刪除失敗"
    end
    redirect_to event_attendees_path(@event)
  end

  private
  def set_event
    @event = Event.find(params[:event_id])
  end

  def params_attendee
    params.require(:attendee).permit(:name)
  end
end
