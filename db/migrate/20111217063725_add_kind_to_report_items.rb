class AddKindToReportItems < ActiveRecord::Migration
  def change
    add_column 'report_items', 'kind', :string
  end
end
