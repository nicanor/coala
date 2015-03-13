class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
    add_index :contacts, :email, unique: true

    create_table :contacts_workshops, id: false do |t|
      t.belongs_to :workshop, index: true
      t.belongs_to :contact, index: true
    end
  end
end
