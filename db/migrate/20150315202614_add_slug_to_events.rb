class AddSlugToEvents < ActiveRecord::Migration
  def change
    add_column :events, :slug, :string, null: false, unique: true
  end
end
