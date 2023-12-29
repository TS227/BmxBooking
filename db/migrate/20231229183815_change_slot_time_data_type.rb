class ChangeSlotTimeDataType < ActiveRecord::Migration[7.1]
  def change
    change_column :slots, :slot_time, :string, null: false
  end
end
