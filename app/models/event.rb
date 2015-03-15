class Event < ActiveRecord::Base

  has_many :participations
  enum state: [:draft, :open, :closed]

  validates :name, :state, :start_date, :start_time, presence: true
end