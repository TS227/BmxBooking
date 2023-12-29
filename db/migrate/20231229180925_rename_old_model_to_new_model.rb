class RenameOldModelToNewModel < ActiveRecord::Migration[7.1]
  def change
    rename_table :sessions, :slots
    rename_table :sessions_users, :slots_users
    rename_column :slots_users, :session_id, :slot_id
    if index_exists?(:slots_users, ["session_id", "user_id"])
      rename_index :slots_users, "index_sessions_users_on_session_id_and_user_id", "index_slots_users_on_slot_id_and_user_id"
    end
  end
end
