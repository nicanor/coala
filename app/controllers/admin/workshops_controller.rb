class Admin::WorkshopsController < Admin::AdminController

  def index
    @workshops = Workshop.all
  end

  def new
    @workshop = Workshop.new
  end
  
  def create
    @workshop = Workshop.new(workshop_params)
    if @workshop.save
      flash[:success] = "YEAH"
      redirect_to [:admin, :workshops]
    else
      flash[:danger] = 'Buuuu'
      render 'new'
    end
  end

  def update
    @workshop = Workshop.find params[:id]
    if @workshop.update(worshop_params)
      flash[:success] = "YEAH"
      redirect_to [:admin, :workshops]
    else
      flash[:danger] = 'Buuuu'
      render 'edit'
    end
  end

  def workshop_params
    params.require(:workshop).permit(:title, :description, :start_date, :start_time)
  end
end