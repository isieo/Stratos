class Report < ActiveRecord::Base
  belongs_to :group
  has_many :report_items

  scope :for_user, lambda{|user| {:conditions=>{:group_id => user.group.name }} }
end
