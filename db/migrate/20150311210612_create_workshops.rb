class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :title
      t.string :state
      t.date :start_date
      t.time :start_time
      t.text :description

      t.timestamps
    end
  end
end
