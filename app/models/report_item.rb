class ReportItem < ActiveRecord::Base
  belongs_to :report
  belongs_to :user
  validates_presence_of :title, :user, :report
end
