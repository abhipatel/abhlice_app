class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :from
      t.text :details

      t.timestamps null: false
    end
  end
end
