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
      flash[:success] = t(:created)
      redirect_to [:admin, @event]
    else
      flash[:danger] = t(:failed)
      render 'new'
    end
  end

  def update
    @event = Event.find params[:id]
    if @event.update(event_params)
      flash[:success] =  t(:updated)
      redirect_to [:admin, @event]
    else
      flash[:danger] =  t(:failed)
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