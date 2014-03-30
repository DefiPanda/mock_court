class Comment < ActiveRecord::Base
  attr_accessible :details, :event_id, :username, :date, :approved
  validates :details, :event_id, :username, :date, :presence => true
  belongs_to :event
end
