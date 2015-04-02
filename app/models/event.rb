class Event < ActiveRecord::Base

  MAX_SLUG_LENGTH = 240
  has_many :participations
  has_many :subscriptions
  enum state: [:draft, :open, :closed]
  validates :name, :state, :start_date, :start_time, presence: true
  before_create :set_slug

  protected
    def set_slug
      self.slug = name.parameterize + "-#{I18n.l(start_date)}" if slug.blank?
      self.slug = slug.truncate(MAX_SLUG_LENGTH, omission: '', separator: '-') if slug.length > MAX_SLUG_LENGTH
    end
end
