class CreateSlotsUsers < ActiveRecord::Migration[7.1]
  def change
    drop_table :slots_users
    create_table :slots_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :slot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
