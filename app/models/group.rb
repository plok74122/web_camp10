class Group < ApplicationRecord
  has_many :event_groupships, :class_name => "EventGroupship", :foreign_key => "group_id"
  has_many :events, :through => :event_groupships
end
