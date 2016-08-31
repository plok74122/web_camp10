class Attendee < ApplicationRecord
  belongs_to :event , :class_name => "Event", :foreign_key => "event_id"
end
