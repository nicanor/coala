class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :contact, index: true
      t.references :event, index: true

      t.timestamps null: false
    end
    add_foreign_key :subscriptions, :contacts
    add_foreign_key :subscriptions, :events
  end
end
