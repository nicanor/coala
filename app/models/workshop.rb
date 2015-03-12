class Workshop < ActiveRecord::Base
  enum state: [:draft, :open, :closed]

  validates :title, :state, :start_date, :start_time, presence: true
end