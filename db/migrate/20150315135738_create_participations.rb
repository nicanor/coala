class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :person, polymorphic: true, index: true
      t.references :event, index: true
      t.string :role

      t.timestamps null: false
    end
    add_foreign_key :participations, :events
  end
end