class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save

    redirect_to :action => :index
  end

  def show
    @event = Event.find(params[:id])
    @page_title = @event.Job_ID
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(event_params)

    redirect_to :action => :show, :id => @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to :action => :index
  end

  private

  def event_params
    params.require(:event).permit(:Job_ID, :Employer, :Position, :Compensation, :Content)
  end
end
