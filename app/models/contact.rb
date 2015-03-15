class Contact < ActiveRecord::Base

  has_many :participations, as: :person
  has_many :events, through: :participation
  validates :email, presence: true
end