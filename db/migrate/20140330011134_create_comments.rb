class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :event_id
      t.text :details
      t.string :username
      t.date :date
      t.timestamps
    end
  end
end
