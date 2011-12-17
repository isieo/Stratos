class Report < ActiveRecord::Base
  belongs_to :group
  has_many :report_items
end
