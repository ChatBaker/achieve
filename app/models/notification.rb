class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment

  has_many :notifications, dependent: :destroy
end
