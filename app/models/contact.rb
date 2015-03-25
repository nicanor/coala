class Contact < ActiveRecord::Base
  has_many :subscriptions
  has_many :events, through: :subscriptions
  validates :email, presence: true

  def to_s
    "#{first_name} #{last_name}"
  end
end