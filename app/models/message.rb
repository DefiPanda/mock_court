class Message < ActiveRecord::Base
  attr_accessible :content, :username, :approved
  belongs_to :user
end
