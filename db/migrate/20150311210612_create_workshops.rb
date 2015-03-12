class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :title
      t.integer :state, default: 0
      t.date :start_date
      t.time :start_time
      t.text :description

      t.timestamps
    end
  end
end
