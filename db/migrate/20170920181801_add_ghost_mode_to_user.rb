class AddGhostModeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :ghost_mode, :boolean, default: false
  end
end
