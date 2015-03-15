class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :state, default: 0
      t.date :start_date
      t.time :start_time
      t.text :description

      t.timestamps
    end
  end
end
