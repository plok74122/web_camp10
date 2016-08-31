class Event < ApplicationRecord
  validates_presence_of :name, :description
  has_many :attendees, :class_name => "Attendee", :foreign_key => "event_id"
  belongs_to :category, :class_name => "Category", :foreign_key => "category_id"
  has_one :location, :class_name => "Location", :foreign_key => "event_id"
end
