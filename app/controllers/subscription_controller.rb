class SubscriptionController < ApplicationController

  def subscribe
    @event = Event.find params[:event_id]
    @form = SubscriptionForm.new(event_id: @event.id)
  end

  def submit
    @form = SubscriptionForm.new form_params
    @form.submit
  end

  def form_params
    params.require(:subscription_form).permit(:event_id, :email, :first_name, :last_name)
  end

end