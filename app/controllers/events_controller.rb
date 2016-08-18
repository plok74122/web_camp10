class EventsController < ApplicationController
  before_action :set_event, :only => [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params_event)
    @event.save
    redirect_to :action => :show, :id => @event
  end

  def show
  end

  def edit
  end

  def update
    @event.update(params_event)

    redirect_to :action => :show, :id => @event
  end

  def destroy
    @event.destroy

    redirect_to :action => :index
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end

  def params_event
    params.require(:event).permit(:name, :description , :capacity)
  end
end
