class Admin::EventsController < Admin::AdminController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find params[:id]
  end

  def edit
    @event = Event.find params[:id]
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "YEAH"
      redirect_to [:admin, :events]
    else
      flash[:danger] = 'Buuuu'
      render 'new'
    end
  end

  def update
    @event = Event.find params[:id]
    if @event.update(event_params)
      flash[:success] = "YEAH"
      redirect_to [:admin, :events]
    else
      flash[:danger] = 'Buuuu'
      render 'edit'
    end
  end

  def destroy
    @event = Event.find params[:id]
    @event.destroy
  end

  def event_params
    params.require(:event).permit(:name, :description, :start_date, :start_time)
  end
end