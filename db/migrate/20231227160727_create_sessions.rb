class CreateSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :sessions do |t|
      t.string :session_name, null: false
      t.tsrange :session_time, null: false
      t.references :event, null: false, foreign_key: true
      t.timestamps
    end
  end
end
