class Event < ApplicationRecord
  validates_presence_of :name , :descritpion
end
