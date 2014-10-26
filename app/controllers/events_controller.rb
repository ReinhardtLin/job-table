class EventsController < ApplicationController
  before_action :set_event, :only => [:show, :edit, :update, :destroy]
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to :action => :index
    else
      render :action => :new
    end
  end

  def show
    @page_title = @event.Job_ID
  end

  def edit
  end

  def update
    if @event.update_attributes(event_params)
      redirect_to :action => :show, :id => @event
    else
      render :action => :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to :action => :index
  end

  private

  def event_params
    params.require(:event).permit(:Job_ID, :Employer, :Position, :Compensation, :Content)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
