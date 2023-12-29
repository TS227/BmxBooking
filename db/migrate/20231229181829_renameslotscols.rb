class Renameslotscols < ActiveRecord::Migration[7.1]
  def change
    rename_column :slots, :session_name, :slot_name
    rename_column :slots, :session_time, :slot_time
  end
end
