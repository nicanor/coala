class SubscriptionController < ApplicationController

  layout 'simple'

  def subscribe
    @event = Event.find_by slug: params[:event_id]
    @form = SubscriptionForm.new(event_id: @event.id)
  end

  def submit
    @form = SubscriptionForm.new form_params
    if @form.submit
      redirect_to success_path
    else
      @event = Event.find @form.event_id
      flash[:danger] = t(:subscription_failed)
      render :subscribe
    end
  end

  def toggle_assistance
    @subscription = Subscription.find(params[:id])
    @subscription.toggle!(:assistance)
    flash[:success] = t(:success)
    render 'show_flash' #nothing: true
  end

  def success
    #TODO: Subscriptions in their own folder with success view.
  end

  def form_params
    params.require(:subscription_form).permit(:event_id, :email, :first_name, :last_name)
  end

end
