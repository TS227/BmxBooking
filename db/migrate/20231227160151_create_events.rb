class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :event_name, null: false
      t.date :event_date, null: false
      t.timestamps
    end
  end
end
