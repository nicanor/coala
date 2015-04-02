class Admin::ContactsController < Admin::AdminController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to [:admin, @contact], notice: t(:created)
    else
      render :new
    end
  end

  def update
    if @contact.update(contact_params)
      redirect_to [:admin, @contact], notice: t(:updated)
    else
      render :edit
    end
  end

  def destroy
    @contact.destroy
    redirect_to [:admin, :contacts], notice: t(:deleted)
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:email, :first_name, :last_name)
    end
end
