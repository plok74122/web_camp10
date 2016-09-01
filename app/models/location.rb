class Location < ApplicationRecord
  validates_presence_of :name
  belongs_to :event, :class_name => "Event", :foreign_key => "event_id"
end
