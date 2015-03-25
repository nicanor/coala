namespace :load do
  task all: :environment do

    event = Event.create(
      name: 'Taller de Cocina',
      start_date: Date.today,
      start_time: Time.now
    )

    SubscriptionForm.new(
      event_id: event.id,
      email: 'nicanorperera@gmail.com',
      first_name: 'Nicanor',
      last_name: 'Perera'
    ).submit

  end
end