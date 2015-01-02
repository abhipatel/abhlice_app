class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :names
      t.boolean :is_attending
      t.text :comments

      t.timestamps null: false
    end
  end
end
