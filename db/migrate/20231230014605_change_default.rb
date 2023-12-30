class ChangeDefault < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :role, from: 1, to: 0
  end
end
