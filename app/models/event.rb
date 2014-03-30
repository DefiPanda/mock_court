class Event < ActiveRecord::Base
  attr_accessible :content, :date, :title, :username, :approved
  belongs_to :user
  has_many :comments, :dependent => :destroy
  validates :content, :date, :title, :presence => true
  validates :title, :length => {:maximum => 100}

  def start_time
    date
  end
end