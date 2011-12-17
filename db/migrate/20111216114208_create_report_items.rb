class CreateReportItems < ActiveRecord::Migration
  def change
    create_table :report_items do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
