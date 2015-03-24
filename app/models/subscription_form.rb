class SubscriptionForm

  include ActiveModel::Model

  attr_accessor :event_id, :email, :first_name, :last_name
  validates :email, :first_name, :last_name, :event_id, presence: true

  def submit
    contact = Contact.find_or_create_by(email: email) do |new_contact|
      new_contact.first_name = first_name
      new_contact.last_name  = last_name
    end

    event.subscriptions.create(contact_id: contact.id)
  end

end