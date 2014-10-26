class Event < ActiveRecord::Base
  validates_presence_of :Job_ID, :Employer, :Position
end
