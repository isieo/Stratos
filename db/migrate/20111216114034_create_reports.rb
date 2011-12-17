class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.text :notes
      t.integer :group_id

      t.timestamps
    end
  end
end
