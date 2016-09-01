class Event < ApplicationRecord
  validates_presence_of :name, :description
  has_many :attendees, :class_name => "Attendee", :foreign_key => "event_id"
  belongs_to :category, :class_name => "Category", :foreign_key => "category_id"
  has_one :location, :class_name => "Location", :foreign_key => "event_id"
  has_many :event_groupships, :class_name => "EventGroupship", :foreign_key => "event_id"
  has_many :groups, :through => :event_groupships
  delegate :name , :to => :category , :prefix => true , :allow_nil => true
  delegate :name , :to => :location , :prefix => true , :allow_nil => true
end
