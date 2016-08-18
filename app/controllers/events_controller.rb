class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(:name , :description))
    @event.save
    redirect_to :action => :show , :id => @event
  end

  def show
    @event = Event.find(params[:id])

  end
end
