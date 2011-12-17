class AddReportIdToReportItems < ActiveRecord::Migration
  def change
    add_column 'report_items', 'report_id', :integer
  end
end
