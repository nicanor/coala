class Subscription < ActiveRecord::Base
  belongs_to :contact
  belongs_to :event

  validates :contact, :event, presence: true
  validates :contact, uniqueness: {scope: :event_id}
end