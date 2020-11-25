class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
      if @event.save
        flash[:success] = "Successfully created new contact"
        redirect_to @event.contact
      else
        render :new
      end
  end

  def update
    if @event.update(event_params)
      flash[:success] = 'Event was successfully updated.'
      redirect_to @event.contact
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
      flash[:success] = 'Event was successfully destroyed.'
      redirect_to @event.contact
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:name, :event_date, :contact_id)
    end
end
