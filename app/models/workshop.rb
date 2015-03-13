class Workshop < ActiveRecord::Base

  has_and_belongs_to_many :contacts
  enum state: [:draft, :open, :closed]

  validates :title, :state, :start_date, :start_time, presence: true
end
