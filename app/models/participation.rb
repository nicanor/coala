class Participation < ActiveRecord::Base
  belongs_to :person, polymorphic: true
  belongs_to :event
end
